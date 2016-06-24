class token {
    method size { value.size }
    method == (other) { (kind == other.kind) && (value == other.value) }
    method kind { required }
    method value { required }
    method asString { "{self.kind} {self.value}" }
    method asDebugString { "<a {self.kind} with {self.value}>" }
    method isIdentifier { false }
    method isString { false }
    method isLbrace { false }
    method isRbrace { false }
    method isLparen { false }
    method isRparen { false }
    method isLsquare { false }
    method isRsquare { false }
    method isDot { false }
    method isNumeral { false }
    method isOperator { false }
    method isAssignment { false }
    method isDefinition { false }
}


class identifier(str) {
    inherit token
    method isIdentifier { true }
    def value is public = str
    method kind { "identifier" }
}
class string(str) {
    inherit token
    method isString { true }
    def value is public = str
    method kind { "string" }
}
def lBrace = object {
    inherit token
    method isLbrace { true }
    def value is public = "\{"
    method kind { "lBrace" }
}
def rBrace = object {
    inherit token
    method isRbrace { true }
    def value is public = "}"
    method kind { "rBrace" }
}
def lParen = object {
    inherit token
    method isLparen { true }
    def value is public = "("
    method kind { "lParen" }
}
def rParen = object {
    inherit token
    method isRparen { true }
    def value is public = ")"
    method kind { "rParen" }
}
def lSquare = object {
    inherit token
    method isLsquare { true }
    def value is public = "["
    method kind { "lSquare" }
}
def rSquare = object {
    inherit token
    method isRsquare { true }
    def value is public = "]"
    method kind { "rSquare" }
}
def dot = object {
    inherit token
    method isDot { true }
    def value is public = "."
    method kind { "dot" }
}
class number(str) {
    inherit token
    method isNumeral { true }
    def value is public = str.asNumber
    method kind { "numeral" }
}
class operator(str) {
    inherit token
    method isOperator { true }
    def value is public = str
    method kind { "operator" }
}
def assignment = object {
    inherit token
    method isAssignment { true }
    def value is public = ":="
    method kind { "assignment" }
}
def definition = object {
    inherit token
    method isDefinition { true }
    def value is public = "="
    method kind { "definition" }
}
def newline = object {
    inherit token
    def value is public = "\n"
    method kind { "newline" }
}
