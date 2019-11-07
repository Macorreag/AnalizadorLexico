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
Este test se realizo con el objetivo de comprobar el reconocimiento de predicados aritméticos,  los operadores ,numeros   operador  number 

### Test3

> **Comando**

 > ./executable < test/code3 > out/code3.out

> **Resultados**
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTgxMDMwNzMxMiwtMTkyMDE0MTY0OF19
-->