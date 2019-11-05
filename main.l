
/*
Path
 cd Documentos/Lenguajes/AnalizadorLexico/
Build with 

> make

Run with 

> ./executable < test/code1 > out/code1.out
	
*/

%{



%}
/*Definiciones 
<Nombre>  <expresion_regular>
*/

NUMBER		[0-9]+|[0-9]+\.[0-9]+|\.[0-9]+

IDPREDI		[pqrt][0-9]{0,5}
IDVAR		[xyz][0-9]{0,5}

VOID		[ \t\n]+
END		[;]


COMMENT 	["#"][ \t\na-zA-Z0-9]*[\n]

ARITMETIC	"+"|"-"|"*"|"/"
LOGIC		"&&"|"\|\|"|"->"
RELATIONAL	":"|":="|"<>"|"<"|">"

DELIMITER	"("|")"|"\["|"\]"|"{"|"}"

/* Reglas Lexicas 
Patrones que se reconoceran del fichero de entrada

<patron(expresión_regular)> <acción(codigo C a ejecutar)>

*/
%%

{VOID}			/*Espacios en blanco*/
{NUMBER}		{ printf( " number " ); }


{IDPREDI}		{ printf( " predicadoArit " ); }
{IDVAR}			{ printf( " predicadoAlge " ); }



{ARITMETIC}		{ printf( " operador "); }
{LOGIC}			{ printf( " operador "); }
{RELATIONAL}		{ printf( " operador "); }

{DELIMITER}		{ printf( " delimitador "); }
{COMMENT}		/*Linea de commentario*/

{END}			{ printf( "\n"); }


.           		{ printf( "Desconocido" ); }

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
