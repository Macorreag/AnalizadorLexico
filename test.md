## Test del Analizador Léxico

Los test realizados sobre el analizador lexico consisten en ingresar el codigo fuente (code) que se encuentra en los archivos de la carpeta test y ver los tokens de salida que se encuentran en el archivo nombreCodigo.out de la carpeta /out

### Test1
> **Comando**

 > ./executable < test/code1 > out/code1.out
 > contenido code1.txt:
p:2*(7-9)<12;
x:=45;
s:[(3x1+4x23)]z89 < x;
q:3/87+5<>x;
y:=45x-67;
Leer(s);
t2134343434:=[(p&&q)||r]->(s||t);
t22:=[p&&(q||r)]->(s||t);
Escribir(t21,t22);

> **Resultados**
Este test corresponde al enviado por el profesor para realizar la prueba del analizador léxico, el cual pone a prueba la mayoría de categorías léxicas del analizador.Ademas genera el token de desconocido para aquellas que no deben ser reconocidas como por ejemplo *Escribir* ó "s".
### Test2

> **Comando**

 > ./executable < test/code2 > out/code2.out
 > Contenido code2:
 > \#Probando predicados aritmeticos
p12345:=123456789.0+987654321;
q67891:=1+1;
r12345:=1-2;
t12345:=2*1;


> **Resultados**
Este test se realizo con el objetivo de comprobar el reconocimiento de predicados aritméticos,  los operadores y números. Para facilitar la realización del test se escribieron solamente cadenas que deben ser reconocidas como por ejemplo (q67891:=1+1;	)  y con la estructura:
 predicadoArit-operador-number-operador-number  
 Por lo tanto para comprobar la efectividad del test en el archivo de salida solo deben existir lineas de ese tipo.

### Test3

> **Comando**

 > ./executable < test/code3 > out/code3.out
 > Contenido code3:
 > \# test de predicados algebraicos
x12345:= 12;
y67891:=		13;
y98123 13;
z12452 21;


> **Resultados**
Este test se realizo con el objetivo de comprobar el reconocimiento de predicados  algebraicos y ademas comprobar que el analizador léxico omita las tabulaciones y los espacios.Efectivamente el test muestra que reconoce dichos predicados algebraicos al observar la salida y ademas omite la tabulaciones y espacios pues no genera ningún token para estos,
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTE1ODMyMDI3NjUsMTAxNjQ3NDE3NiwtMT
kyMDE0MTY0OF19
-->