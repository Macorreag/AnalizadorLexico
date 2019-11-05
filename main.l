
/*
Path
 cd Documentos/Lenguajes/AnalizadorLexico/
Build with 

> make

Run with 

> ./executable < test/code1 > out/code1.out
	
*/

%{
/* se necesita esto para la llamada a atof() más abajo */
#include <math.h>
%}
/*Definiciones 
<Nombre>  <expresion_regular>
*/


NUMBER		[0-9]+|[0-9]+\.[0-9]+|\.[0-9]+
IDPREDI		[pqrt][0-9]{0,5}

IDVAR		[xyz][0-9]{0,5}

VOID		[ \t\n]+
END		[;]
TEXT		\"[^\"\n]*\"
COMMENT 	\#[a-zA-Z][a-zA-Z0-9]*

ARITMETIC	"+"|"-"|"*"|"/"
LOGIC		"&&"|"\|\|"|"->"
RELATIONAL	":"|":="|"<>"|"<"|">"

DELIMITER	"("|")"|"\["|"\]"|"{"|"}"

/* Reglas Lexicas 
Patrones que se reconoceran del fichero de entrada

<patron(expresión_regular)> <acción(codigo C a ejecutar)>

*/
%%

{VOID}			;
{NUMBER}		{ printf( " number " ); }


{IDPREDI}		{ printf( " predicadoArit " ); }

{IDVAR}			{ printf( " predicadoAlge " ); }



{ARITMETIC}		{ printf( " operador "); }
{LOGIC}			{ printf( " operador "); }
{RELATIONAL}		{ printf( " operador "); }

{DELIMITER}		{ printf( " delimitador "); }

"{"[^}\n]*"}"     /* se come una linea de comentarios */

{END}			{ printf( "\n"); }

.           		printf( "Error" );

%%

/*Codigo C rutinas de usuario (opcional) */

main( argc, argv )
int argc;
char **argv;
    {
    ++argv, --argc;  /* se salta el nombre del programa */
    if ( argc > 0 )
            yyin = fopen( argv[0], "r" );
    else
            yyin = stdin;
    
    yylex();
    }
