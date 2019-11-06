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

|Categoría | Expresión Regular |
| ---------- | ---------- |
| Espacio  | ` [ \t\n]+`   |
| Predicado Aritmetico   | ` [pqrt][0-9]{0,5} `|
| Predicado Algebraico | ` [xyz][0-9]{0,5} `|
| Operador | ` [ "+" \| "-" \| "*" |"/"||"&&"|"\|\|"|"->"||":"|":="|"<>"|"<"|">"[  ` |
| Delimitador |<p><code> [ "(" | ")" | "\["|"\]"|"{"|"}"]  </code></p>|
| Comentario |` ["#"][ \t\na-zA-Z0-9]*[\n] ` |
| Fin de Sentencia | ` [;] `|
| Desconocido |` . ` |


## Uso en LinuX

Para compilar los archivos Lex del  Analizador Lexico _main.l_  en las estaciones de trabajo Linux Lex ejecute las siguientes instrucciones desde la línea de comandos :

> `make`

Internamente ejecutan las siguientes instrucciones:

> `flex main.l`

Este comando usa las expresiones regulares y el código c en el archivo lex (main.l) para crear un archivo en  **C** que contenga el código para el escáner. Este archivo c siempre se llama lex.yy.c.

> `cc lex.yy.c -lfl -o  executable`

Este comando compila el archivo **C** en un ejecutable con el nombre de _executable_.

> `./executable < test/code1 > out/code1.out`

Use este comado para ejecutar el escáner, simplemente escriba el nombre del ejecutable en la línea de comandos y especifique un archivo de entrada utilizando el operador de redireccionamiento. En el  ejemplo se direcciona al analizador el archivo _code1_ que se encuentra en la carpeta _test_  y el resultado se redirecciona al archivo _code1.out_ que se encuentra en la carpeta _out_.