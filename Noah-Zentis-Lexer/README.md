This lexer is for a mini-language much smaller than Grace.  However, it has a nice design, eliminating all conditional code other than on the input character.
It should therefore make a good basis for a lexer for Grace.

(Probably for simplicity), Noah eliminated the line and column positions from the tokens.  If used for Grace, replace the _tokens.grace_ module include here should be replaced by the appropriate extract from _lexer.grace_ in _minigrace_.

Right now, minigrace does not generate or expect newline tokens.   Instead, it uses the line numbers in the tokens to figure out where the line breaks are.  So the generation of newline tokens by the lexer can be omitted.