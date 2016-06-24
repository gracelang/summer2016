import "token" as tok

method isNumber(x) { !x.isEmpty && ("0123456789".contains(x)) }
method isLetter(x) {
    !x.isEmpty && (
        "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".contains(x))
}
method isIdentifier(x) { (!x.isEmpty) && (isLetter(x) || ("_-".contains(x))) }
method isOperator(x) { !x.isEmpty && ("-&|$#%^@?*\\/+!><~".contains(x)) }
method isExtOperator(x) { !x.isEmpty && (isOperator(x) || "=:".contains(x)) }

class lexer {
    def startState = object {
        method consume(c) {
            match (c)
                case { " " -> }
                case { "\"" -> advanceTo(stateStringUnescapedEnter0) }
                case { "\r" -> }
                case { "\u2028" -> }
                case { "\n" -> advanceTo(newline) }
                case { "." ->
                    storeChar(".")
                    advanceTo(numFracRequired)
                }
                case { "(" -> emit(tok.lParen) }
                case { ")" -> emit(tok.rParen) }
                case { "[" -> emit(tok.lSquare) }
                case { "]" -> emit(tok.rSquare) }
                case { "\{" -> emit(tok.lBrace) }
                case { "}" -> emit(tok.rBrace) }
                case { "=" -> advanceTo(speculativeDefine) }
                case { ":" -> advanceTo(speculativeAssign) }
                case { "" -> }
                case { x ->
                    storeChar(x)
                    if(isNumber(x)) then {
                        advanceTo(numDecimal)
                    } elseif { isLetter(x) } then {
                        advanceTo(identifier)
                    } elseif { isOperator(x) } then {
                        emit(tok.operator(x))
                    } else {
                        print("Unexpected input: \"" ++ c ++ "\"")
                    }
                }
        }
    }
    
    def speculativeDefine = object {
        method consume(c) {
            if(isExtOperator(c)) then {
                storeChar("=")
                advanceTo(specialOperator)
            } else {
                emit(tok.definition)
                advanceTo(startState)
            }
            state.consume(c)
        }
    }
    
    def speculativeAssign = object {
        method consume(c) {
            if(c == "=") then {
                advanceTo(speculativeAssignLast)
            } elseif { isExtOperator(c) } then {
                storeChar(":")
                advanceTo(specialOperator)
                state.consume(c)
            } else {
                emit(tok.operator(":"))
                advanceTo(startState)
                state.consume(c)
            }
        }
    }
    
    def speculativeAssignLast = object {
        method consume(c) {
            if(isExtOperator(c)) then {
                storeChar(":=")
                advanceTo(specialOperator)
            } else {
                emit(tok.assignment)
                advanceTo(startState)
            }
            state.consume(c)
        }
    }
    
    def specialOperator = object {
        method consume(c) {
            if(isExtOperator(c)) then {
                storeChar(c)
            } else {
                emit(tok.operator(current))
                advanceTo(startState)
                state.consume(c)
            }
        }
    }
    
    def newline = object {
        method consume(c) {
            match(c)
                case { "\r" -> }
                case { x ->
                    advanceTo(startState)
                    state.consume(x)
                }
        }
    }
    
    def numFracRequired = object {
        method consume(c) {
            if(isNumber(c)) then {
                storeChar(c)
                advanceTo(numFrac)
            } else {
                emit(tok.dot)
                advanceTo(startState)
                state.consume(c)
            }
        }
    }
    
    def numFrac = object {
        method consume(c) {
            if(isNumber(c)) then {
                storeChar(c)
            } else {
                emit(tok.number(current))
                advanceTo(startState)
                state.consume(c)
            }
        }
    }
    
    def numDecimal = object {
        method consume(c) {
            if(isNumber(c)) then {
                storeChar(c)
            } elseif { c == "." } then {
                storeChar(c)
                advanceTo(numFrac)
            } else {
                emit(tok.number(current))
                advanceTo(startState)
                state.consume(c)
            }
        }
    }
    
    def identifier = object {
        method consume(c) {
            if(isIdentifier(c)) then {
                storeChar(c)
            } else {
                emit(tok.identifier(current))
                advanceTo(startState)
                state.consume(c)
            }
        }
    }
    
    def stateString = object {
        method consume(c) {
            match(c)
                case { "\"" ->
                    emit(tok.string(current))
                    advanceTo(startState)
                }
                case { "\\" -> advanceTo(stateStringEscaped) }
                case { x -> storeChar(x) }
        }
    }
    
    def stateStringEscaped = object {
        method consume(c) {
            match(c)
                case { "\"" ->
                    storeChar("\"")
                    advanceTo(stateString)
                }
                case { "n" ->
                    storeChar("\n")
                    advanceTo(stateString)
                }
                case { "t" ->
                    storeChar("\t")
                    advanceTo(stateString)
                }
                case { "\\" ->
                    storeChar("\\")
                    advanceTo(stateString)
                }
                case { x ->
                    storeChar("\\")
                    storeChar(x)
                    advanceTo(stateString)
                }
        }
    }
    
    def stateStringUnescapedEnter0 = object {
        method consume(c) {
            match(c)
                case { "\"" -> advanceTo(stateStringUnescapedEnter1) }
                case { x -> advanceTo(stateString); state.consume(x) }
        }
    }
    
    def stateStringUnescapedEnter1 = object {
        method consume(c) {
            match(c)
                case { "\"" -> advanceTo(stateStringUnescaped) }
                case { x ->
                    emit(tok.string(""))
                    advanceTo(startState)
                    state.consume(x)
                }
        }
    }
    
    def stateStringUnescaped = object {
        method consume(c) {
            match(c)
                case { "\"" -> advanceTo(stateStringUnescapedLeave1) }
                case { x -> storeChar(x) }
        }
    }
    
    def stateStringUnescapedLeave1 = object {
        method consume(c) {
            match(c)
                case { "\"" -> advanceTo(stateStringUnescapedLeave2) }
                case { x ->
                    storeChar("\"")
                    storeChar(x)
                    advanceTo(stateStringUnescaped)
                }
        }
    }
    
    def stateStringUnescapedLeave2 = object {
        method consume(c) {
            match(c)
                case { "\"" ->
                    emit(tok.string(current))
                    advanceTo(startState)
                }
                case { x ->
                    storeChar("\"\"")
                    storeChar(x)
                    advanceTo(stateStringUnescaped)
                }
        }
    }
    
    var state := startState
    var tokens := list []
    var current := ""
    
    method advanceTo(s) { state := s }
    method emit(t) {
        //print("Emitting {t}")
        tokens.add(t)
        current := ""
    }
    method storeChar(c) { current := current ++ c }
    
    method consume(c) {
        //print(c)
        //print(state)
        state.consume(c)
    }
    
    method finish {
        consume("")
        tokens
    }
}

method lex(s) {
    var l := lexer
    s.do { ch -> l.consume(ch) }
    l.finish
}