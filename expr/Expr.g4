grammar Expr;

s : e ;
e : e MULT e
  | e ADD e
  | INT
  ;

MULT: '*'   ;
ADD:  '+'   ;
INT: [0-9]+ ;
WS:  [ \t\r\n]+ -> skip ;