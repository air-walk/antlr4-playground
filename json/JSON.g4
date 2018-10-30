grammar JSON;

json: object
		| array
		;

object: '{' pair (',' pair)* '}'
			| '{' '}'
			;

pair:   STRING ':' value	;

array:  '['	value (',' value)*  ']'
		 |  '[' ']'											//empty array
		 ;

value: STRING
			| NUMBER
			| object
			| array
			| 'true'
			| 'false'
			| 'null'
			;

// STRING:
STRING: '"' (ESC | ~["\\])* '"' ;

fragment
ESC:    '\\' (["\\/bfnrt] | UNICODE) ;

fragment
UNICODE: 'u' HEX HEX HEX HEX;
HEX:			[0-9a-fA-F]				;

// NUMBER:
NUMBER
	: '-'? INT '.' [0-9]+ EXP?
	| '-'? INT EXP
	| '-'? INT
	;

fragment
INT: '0' | [1-9] [0-9]*	;

fragment
EXP: [Ee] [+\-]? INT    ;


WS:			[ \t\r\n]+ -> skip  ;
