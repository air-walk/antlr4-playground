grammar JSON;

object: '{' pair (',' pair)* '}'
			| '{' '}'
			;
pair:   STRING ':' value	;
value:  ARRAY
			| BOOL
			| FLOAT
			| STRING
			;

ARRAY:  '[' ']'
		 |  '['	STRING (',' STRING)*  ']'
		 ;
BOOL:   'true' | 'false'  ;
FLOAT:	INT 'e' INT				;
INT:    [0-9]+						;
STRING: '"' .*? '"' 			;
WS:			[ \t\r\n]+ -> skip ;
