%Programa simpson 3/8
clc;%limpia la pantalla
fprintf('Proyecto Simpson 3/8 Simple\n');

funcion = input('Ingrese la funcion:','s'); %el parametro 's' es para que no evalue la entrada

f = inline(funcion);%convierte la entrada en una funcion para poderla evaluar
a = input('Ingrese el numero inferior de la integral:');
b = input('Ingrese el numero superior de la integral:');

h = (b-a)/3; %calculamos el valor de h

%se obtienen los valores de las funciones
fx0 = f(a); 
fx1 = f(a+h);
fx2 = f(a+2*h);
fx3 = f(b);

%se crea la tabla desde a hasta b
fprintf('|\ti\t|\tx\t\t|\ty\t\t|\n');
fprintf('|\t-\t|\t-\t\t|\t-\t\t|\n');
fprintf('|\t0\t|\t%.2f\t|\t%.2f\t|\n',a,fx0);
fprintf('|\t1\t|\t%.2f\t|\t%.2f\t|\n',a+h,fx1);
fprintf('|\t2\t|\t%.2f\t|\t%.2f\t|\n',a+2*h,fx2);
fprintf('|\t3\t|\t%.2f\t|\t%.2f\t|\n',b,fx3);

%sacamos la aproximacion con la formula simpson 3/8 simple
aprox = (3*h/8)*(fx0+3*(fx1)+3*(fx2)+fx3);


fprintf('El valor aproximado de la integral es: %f',aprox);% se impre el resultado