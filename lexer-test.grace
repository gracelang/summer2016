import "lexer-new" as lexer_new
import "lexer" as lexer
import "util" as util
import "buildinfo" as buildinfo

util.parseargs(buildinfo)

util.log_verbose "starting compilation"
var tokens := lexer_new.new.lexfile(util.infile)
// Print the lexed tokens and quit.
for (tokens) do { v ->
    print "{v.kind}: {v.value}  [pos: {v.line}.{v.linePos} size: {v.size} indent: {v.indent}]"
}
