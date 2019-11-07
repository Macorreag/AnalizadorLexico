## Test del Analizador Léxico

Los test realizados sobre el analizador lexico consisten en ingresar el codigo fuente (code) que se encuentra en los archivos de la carpeta test y ver los tokens de salida que se encuentran en el archivo nombreCodigo.out de la carpeta /out

### Test1
> **Comando**

 > ./executable < test/code1 > out/code1.out

> **Resultados**
Este test corresponde al enviado por el profesor para realizar la prueba del analizador léxico, el cual pone a prueba la mayoría de categorías léxicas del analizador.Ademas genera el token de desconocido para aquellas que no deben ser reconocidas como por ejemplo *Escribir* ó "s".
### Test2

> **Comando**

 > ./executable < test/code2 > out/code2.out

> **Resultados**
Este test se realizo con el objetivo de comprobar el reconocimiento de predicados aritméticos,  los operadores y números. Para facilitar la realización del test se escribieron solamente cadenas que deben ser reconocidas como por ejemplo (q67891:=1+1;	)  y con la estructura:
 predicadoArit-operador-number-operador-number  
 Por lo tanto para comprobar la efectividad del test en el archivo de salida solo deben existir lineas de ese tipo.

### Test3

> **Comando**

 > ./executable < test/code3 > out/code3.out

> **Resultados**
Este test se realizo con el objetivo de comprobar el reconocimiento de predicados  algebraicos
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTgxMjIxMjM2NSwtMTkyMDE0MTY0OF19
-->