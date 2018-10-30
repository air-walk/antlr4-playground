grammar PropertyFile;

file: prop+							 ;
prop: ID '=' STRING '\n' ;


ID:			[a-z]+						 ;
STRING: '"' .*? '"'			 	 ;
WS: 		[ \t\r\n]+ -> skip ;
