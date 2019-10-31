
/* escáner para un lenguaje de juguete al estilo de Pascal */

%{
/* se necesita esto para la llamada a atof() más abajo */
#include <math.h>
%}
/*Definiciones 
<Nombre>  <expresion_regular>
*/

DIGITO  [0-9]
NUMBER [0-9]+|[0-9]+\.[0-9]+|\.[0-9]+
ID      [pqrt][0-9]{0,5}
VOID	[ \t\n]+
END	[;]
TEXT	\"[^\"\n]*\"
COMMENT \#[a-zA-Z][a-zA-Z0-9]*

/* Reglas Lexicas 
Patrones que se reconoceran del fichero de entrada

<patron(expresión_regular)> <acción(codigo C a ejecutar)>

*/
%%

{VOID}			{ printf( " space "); }

{DIGITO}+		{ printf( " entero "); }

{DIGITO}+"."{DIGITO}*	{ printf( "real" ); }


{ID}			{ printf( " predicado " ); }

{ID}[a-zA-Z0-9]*	{ printf( " error " ); }
{NUMBER}[a-zA-Z]*	{ printf( " error " ); }

"+"|"-"|"*"|"/"   	{ printf( " operadorLogico "); }
"="|"<>"|"<"|">"   	{ printf( " operadorRelacional "); }

"{"[^}\n]*"}"     /* se come una linea de comentarios */

.           printf( "Error" );

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
