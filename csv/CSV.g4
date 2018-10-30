grammar CSV;

file:  (row '\n')* 			  ;
row:   field (',' field)* ;
field: INT 							  ;

INT:   DIGIT+				  		;

fragment
DIGIT: [0-9]							;

WS: [ \t\r\n]+ -> skip		;
