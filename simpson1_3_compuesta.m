%Programa simpson 1/3
clc;%limpia la pantalla
fprintf('Proyecto Simpson 1/3 Compuesta \n');
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

temp_a = a;
%fprintf('|\t%d\t|\t%.2f\t|\t%.2f\t|\n',x,a,f(a));
for x=0:n
    if(x~=0)
        s(x+1) = f(temp_a+h);     
        temp_a = temp_a+h;
    else
        s(x+1) = f(temp_a);     
    end
   
    %aprox = aprox +(h/3) *f(f(a)+4*f(a+h)+f(a+2*h));
    %fprintf('|\t%d\t|\t%.2f\t|\t%.2f\t|\n',x,a+h,f(a+h));
    %a=a+2*h;    
end
%suma de pares 
sumPar = 0;
for x=2:2:n-1   
    sumPar = sumPar + s(x+1);    
    fprintf('valor fx:%.2f\n',s(x+1));
    fprintf('indice:%d resultado sumatoria fx:%.2f\n',x,sumPar);
end
sumImpar = 0;
%suma de pares
for x=1:2:n   
    sumImpar = sumImpar + s(x+1);    
    fprintf('valor fx:%.2f\n',s(x+1));
    fprintf('indice:%d resultado sumatoria fx:%.2f\n',x,sumImpar);
end

%Crear tabla 
temp_a = a;
for x=0:n
    if(x~=0)
        fprintf('|\t%d\t|\t%.2f\t|\t%.2f\t|\n',x,temp_a+h,s(x+1));
        temp_a = temp_a+h;
    else
        fprintf('|\t%d\t|\t%.2f\t|\t%.2f\t|\n',x,temp_a,s(x+1));
    end    
end
%fprintf('|\t%d\t|\t%.2f\t|\t%.2f\t|\n',n+1,b,f(b));
%aplicando la formula 1/3 compuesta

aprox = (h/3)*(f(a)+4*(sumImpar)+2*(sumPar)+f(b));
fprintf('El valor aproximado de la integral es: %f',aprox);