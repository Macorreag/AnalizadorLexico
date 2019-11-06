# Analizador Léxico

## Creador

[**Macorreag**](https://github.com/macorreag)  Miller Alexander Correa Gonzalez

## Categorias Léxicas
Este analizador lexico esta compuesto de las siguientes  categorias lexicas las cuales constituyen un simbolo elemental  de un lenguaje de programación:

* Espacio
* Numero
* Predicado Aritmetico
* Predicado Algebraico
* Operador
* Delimitador
* Comentario
* Fin de Sentencia
* Desconocido


## Expresiones Regulares

A continuación se especifican las expresiones regulares que determinan el patrón que caracteriza a cada una de esas categorías léxicas.

> |Categoría | Expresión Regular |
| ---------- | ---------- |
| Espacio  | ` [ \t\n]+`   |
| Predicado Aritmetico   | <p><code>[pqrt][0-9]{0,5}<p><code>|
| Predicado Algebraico | <p><code>[xyz][0-9]{0,5}<p><code>|
| Operador | <p><code>"+"|"-"|"*"|"/"||"&&"|"\|\|"|"->"||":"|":="|"<>"|"<"|">"<p><code>|
| Delimitador |<p><code>"("|")"|"\["|"\]"|"{"|"}"<p><code> |
| Comentario |<p><code>["#"][ \t\na-zA-Z0-9]*[\n]<p><code> |
| Fin de Sentencia | <p><code>[;]<p><code>|
| Desconocido |<p><code>.<p><code> |







##Uso


## Iniciar en LinuX

###  Compilación programa 

> ` make`

Ejecutando FLEX en Linux

Para compilar los archivos lex de ejemplo (por ejemplo, example1.l) en las estaciones de trabajo Linux utilizando flex (una versión diferente de lex), ejecute las siguientes instrucciones desde la línea de comandos (%):

> `flex main.l`

> `cc lex.yy. c -lfl`

El primer comando (flex ...) usa las expresiones regulares y el código c en el archivo lex (ejemplo1.l) para crear un archivo ac que contenga el código para el escáner. Este archivo c siempre se llama lex.yy.c. El segundo comando (cc ...) compila el archivo c en un ejecutable. Aquí el ejecutable será a.out. Para especificar un nombre diferente para el ejecutable, compile lex.yy.c usando el comando:

% cc -o newexecutablename lex.yy.c -lfl

Para ejecutar el escáner, simplemente escriba el nombre del ejecutable en la línea de comandos y especifique un archivo de entrada utilizando el operador de redireccionamiento. Por ejemplo, si el nombre del archivo de entrada es words.txt, escriba el comando:

% a.out <words.txt

Nota: Si recibe el mensaje de error a.out: Comando no encontrado cuando ejecuta el programa, intente agregar lo siguiente línea:
establecer ruta = ($ ruta.) a su archivo .login. Esto incluirá su directorio actual en la ruta de búsqueda y se debe encontrar el ejecutable.cutable.le.le.., intente agregar lo siguiente línea:
establecer ruta = ($ ruta.) a su archivo .login. Esto incluirá su directorio actual en la ruta de búsqueda y se debe encontrar el ejecutable.cutable.le.le..contrar el ejecutable.cutable.le.le..e.cutable.le.le..