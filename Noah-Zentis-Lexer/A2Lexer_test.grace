dialect "minitest"
import "A2Lexer" as lexer
import "token" as token

testSuiteNamed "single tokens" with {
    test "identifier" by {
        lex "alphabetic" shouldBe [
            token.identifier "alphabetic"
        ]
    }

    test "2 identifiers" by {
        lex "ix\njx" shouldBe [
            token.identifier "ix",
            token.identifier "jx"
        ]
    }
    
    test "operators" by {
        lex "-&|:" shouldBe [
            token.operator "-",
            token.operator "&",
            token.operator "|",
            token.operator ":"
        ]
    }
    
    test "brackets" by {
        lex "[\{(]})]]" shouldBe [
            token.lSquare,
            token.lBrace,
            token.lParen,
            token.rSquare,
            token.rBrace,
            token.rParen,
            token.rSquare,
            token.rSquare
        ]
    }
    
    test "def, assign, dots" by {
        lex "=.:=.==.:===" shouldBe [
            token.definition,
            token.dot,
            token.assignment,
            token.dot,
            token.operator "==",
            token.dot,
            token.operator ":==="
        ]
    }
}

testSuiteNamed "strings" with {
    test "basic string" by {
        lex "\"basic string\"" shouldBe [
            token.string "basic string"
        ]
    }
    
    test "consecutive strings" by {
        lex "\"basic string\" \"example string\"" shouldBe [
            token.string "basic string",
            token.string "example string"
        ]
    }
    
    test "escapes" by {
        // The language parser throws weird behavior if these are all in one
        // literal
        var testString := "\"" ++ "basic"
        testString := testString ++ "\\" ++ "n"
        testString := testString ++ "\\" ++ "t"
        testString := testString ++ "\\" ++ "\""
        testString := testString ++ "\\" ++ "\\"
        
        lex (testString ++ " string\" ") shouldBe [
            token.string "basic\n\t\"\\ string"
        ]
    }
    
    test "invalid escape" by {
        lex "\"basic \\string\"" shouldBe [
            token.string "basic \\string"
        ]
    }
    
    test "unescaped" by {
        lex "\"\"\"unescaped string \\t\\n\n\t \"\" foo bar \"\"\"" shouldBe [
            token.string "unescaped string \\t\\n\n\t \"\" foo bar "
        ]
    }
}

testSuiteNamed "numbers" with {
    test "ints" by {
        lex "0123 9763 81928 9912. 1 0 2 3" shouldBe [
            token.number "0123",
            token.number "9763",
            token.number "81928",
            token.number "9912.",
            token.number "1",
            token.number "0",
            token.number "2",
            token.number "3"
        ]
    }
    
    test "decimal" by {   
        lex "0123.5678 .567" shouldBe [
            token.number "0123.5678",
            token.number ".567"
        ]
    }
    
    test "complex" by {
        lex "0123.55. + 19. - 1" shouldBe [
            token.number "0123.55",
            token.dot,
            token.operator "+",
            token.number "19.",
            token.operator "-",
            token.number "1"
        ]
    }
}

testSuiteNamed "complicated" with {
    test "expressionlike" by {
        lex "((1 + 2.75) - 12 == toString) * 12 / 85 := \{ foo }" shouldBe [
            token.lParen, token.lParen,
            token.number "1",
            token.operator "+",
            token.number "2.75",
            token.rParen,
            token.operator "-",
            token.number "12",
            token.operator "==",
            token.identifier "toString",
            token.rParen,
            token.operator "*",
            token.number "12",
            token.operator "/",
            token.number "85",
            token.assignment,
            token.lBrace,
            token.identifier "foo",
            token.rBrace
        ]
    }
}

method lex(str) shouldBe (goodTokenList) {
    def result = lexer.lex(str)
    assert (result.size == goodTokenList.size)
            description "lexing produced {result.size} tokens, expected {goodTokenList.size} tokens"
    for (result) and (goodTokenList) do { r, g ->
        assert (r) shouldBe (g)
    }
}
