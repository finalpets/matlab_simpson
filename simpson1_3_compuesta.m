%Programa simpson 1/3
clc;%limpia la pantalla
fprintf('Proyecto Simpson 1/3 Simple \n');
funcion = input('Ingrese la funcion:','s'); %el parametro 's' es para que no evalue la entrada

f = inline(funcion);%convierte la entrada en una funcion para poderla evaluar
a = input('Ingrese el numero inferior de la integral:');
b = input('Ingrese el numero superior de la integral:');
cantidad = input('Ingrese la cantidad de veces que de sea aplicar el metodo Numero Par:');
n = 2*cantidad;
aprox = 0;
h = (b-a)/n;

for x=1:cantidad
    aprox = aprox +(h/3) *f(f(a)+4*f(a+h)+f(a+2*h));
end
fprintf('El valor aproximado de la integral es: %f',aprox);