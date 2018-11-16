%Programa simpson 1/3
clc;%limpia la pantalla
fprintf('Proyecto Simpson 1/3 Simple \n');
funcion = input('Ingrese la funcion:','s'); %el parametro 's' es para que no evalue la entrada

f = inline(funcion);%convierte la entrada en una funcion para poderla evaluar
a = input('Ingrese el numero inferior de la integral:');
b = input('Ingrese el numero superior de la integral:');
n = input('Ingrese la cantidad de veces que de sea aplicar el metodo Numero Par:');
%n = 2*cantidad;
aprox = 0;
h = (b-a)/n;
s = zeros(n);
fprintf('valor de h:%.2f \n',h);
%fprintf('|\t%d\t|\t%.2f\t|\t%.2f\t|\n',x,a,f(a));
for x=1:n
    if(x~=1)
        s(x) = f(a+h);     
    else
        s(x) = f(a);     
    end
   a = a+h;
    %aprox = aprox +(h/3) *f(f(a)+4*f(a+h)+f(a+2*h));
    %fprintf('|\t%d\t|\t%.2f\t|\t%.2f\t|\n',x,a+h,f(a+h));
    %a=a+2*h;    
end

for x=1:n
    
end
%fprintf('El valor aproximado de la integral es: %f',aprox);