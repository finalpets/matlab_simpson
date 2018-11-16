%Programa simpson 1/3
clc;%limpia la pantalla
fprintf('Proyecto Simpson 1/3 Simple');
funcion = input('Ingrese la funcion:','s'); %el parametro 's' es para que no evalue la entrada

f = inline(funcion);%convierte la entrada en una funcion para poderla evaluar
a = input('Ingrese el numero inferior de la integral:');
b = input('Ingrese el numero superior de la integral:');
aprox = 0;
h = (b-a)/2;

fx0 = f(a);
fx1 = f(a+h);
fx2 = f(b);

aprox = (h/3)*(fx0+4*(fx1)+fx2);
fprintf('El valor aproximado de la integral es: %f',aprox);