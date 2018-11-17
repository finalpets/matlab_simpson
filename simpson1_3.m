%Programa simpson 1/3
clc;%limpia la pantalla
%ejemplo: x/(1+x^2)
fprintf('Proyecto Simpson 1/3 Simple\n');% \n es un salto de linea

funcion = input('Ingrese la funcion:','s'); %el parametro 's' es para que no haga operaciones con la entrada

f = inline(funcion);%convierte la entrada en una funcion para poderla evaluar
a = input('Ingrese el numero inferior de la integral:');% se captura el valor de a
b = input('Ingrese el numero superior de la integral:');% se captura el valor de b

h = (b-a)/2; % se calcula el valor de h que es el intervalo entre los puntos
fprintf('el valor de h es :%.2f \n',h);
fx0 = f(a); %se evalua a con la funcion ingresada 'f'
fx1 = f(a+h); % se evalua a+h con la funcion ingresada 'f'
fx2 = f(b); % se evalua b con la funcion ingresada 'f'

%Creamos la tabla con los valores
fprintf('|\ti\t|\tx\t\t|\ty\t\t|\n');%la '\t' es TAB para hacer espacio
fprintf('|\t-\t|\t-\t\t|\t-\t\t|\n');
fprintf('|\t1\t|\t%.2f\t|\t%.2f\t|\n',a,fx0);%imprime los valores de los intervalos con sus respectiivas funciones desde a hasta b
fprintf('|\t2\t|\t%.2f\t|\t%.2f\t|\n',a+h,fx1);% a+h es el valor intermedio que hay entre a(limite inferior) y b(limite superior)
fprintf('|\t3\t|\t%.2f\t|\t%.2f\t|\n',b,fx2);% el '%.2f' imprime 2 decimales nada mas

aprox = (h/3)*(fx0+4*(fx1)+fx2);%formula completa de simpson 1/3 simple


fprintf('El valor aproximado de la integral es: %f',aprox);%se imprime el resultado 