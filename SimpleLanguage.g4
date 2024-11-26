grammar LispWithSideEffect;

// 프로그램은 하나 이상의 표현식으로 구성됩니다.
program: expression+ EOF;

// 표현식은 부수 효과(side_effect) 또는 순수 표현식(pure_expression)입니다.
expression
    : side_effect
    | pure_expression
    ;

// 순수 표현식은 아톰(atom) 또는 s-표현식입니다.
pure_expression
    : atom
    | s_expression
    ;

// 아톰은 숫자 또는 심볼입니다.
atom
    : NUMBER
    | SYMBOL
    ;

// s-표현식은 괄호로 둘러싸인 하나 이상의 순수 표현식입니다.
s_expression
    : LPAREN pure_expression+ RPAREN
    ;

// 부수 효과는 심볼 뒤에 괄호로 둘러싸인 표현식들의 시퀀스가 옵니다.
side_effect
    : SYMBOL LPAREN expression* RPAREN
    ;

// 토큰 정의
LPAREN: '(';
RPAREN: ')';

NUMBER: [0-9]+;

SYMBOL: [a-zA-Z_][a-zA-Z0-9_]*;

// 공백 문자 무시
WS: [ \t\r\n]+ -> skip;
