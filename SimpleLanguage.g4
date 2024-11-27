grammar LispWithSideEffect;

program: expression+ EOF;

expression
    : side_effect
    | pure_expression
    ;

pure_expression
    : atom
    | s_expression
    ;

atom
    : NUMBER
    | SYMBOL
    ;

s_expression
    : LPAREN pure_expression+ RPAREN
    ;

side_effect
    : SYMBOL LPAREN expression* RPAREN
    ;

LPAREN: '(';
RPAREN: ')';

NUMBER: [0-9]+;

SYMBOL: [a-zA-Z_][a-zA-Z0-9_]*;

WS: [ \t\r\n]+ -> skip;
