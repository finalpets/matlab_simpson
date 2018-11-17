%Programa simpson 3/8
clc;%limpia la pantalla
fprintf('Proyecto Simpson 3/8 Compuesta \n');
funcion = input('Ingrese la funcion:','s'); %el parametro 's' es para que no evalue la entrada

f = inline(funcion);%convierte la entrada en una funcion para poderla evaluar
a = input('Ingrese el numero inferior de la integral:');
b = input('Ingrese el numero superior de la integral:');
n = input('Ingrese la cantidad de veces que de sea aplicar el metodo Numero ImPar:');

h = (b-a)/n; % calculamos el valor de h donde n tiene que ser impar
s = zeros(n); % se reserva en memoria el espacio del arreglo dependiendo el tamaño de la n
fprintf('valor de h:%.2f \n',h);

temp_a = a;%se guarda el valor de a en un temporal porque se requiere cambiar su valor para no afectar el original

for x=0:n
    if(x~=0)%preguntamos si el valor de x es diferente a 0 y si es diferente entonces le sumamos el valor de h
        s(x+1) = f(temp_a+h);%sacamos la evaluacion de las funciones de todos los puntos y los almacenamos en S     
        temp_a = temp_a+h;
    else
        s(x+1) = f(temp_a);% sacamos la funcion del primer valor sin sumarle la h
    end
   
end
%suma_1
suma_1 = 0;
for x=1:3:n-2 %ciclo desde x=1 con imcrementos de 3 en 3    
    suma_1 = suma_1 + s(x+1);
end
suma_2 = 0;
%suma_2
for x=2:3:n-1  %ciclo desde x=2 con imcrementos de 3 en 3     
    suma_2 = suma_2 + s(x+1);    
end

%suma_3
suma_3 = 0;
for x=3:3:n-3  %ciclo desde x=3 con imcrementos de 3 en 3   
    suma_3 = suma_3 + s(x+1);    
end

%Crear tabla 
temp_a = a;
for x=0:n %imprimos la tabla con los valores de a hasta b con todos sus intervalos
    if(x~=0)%mientras el valor sea diferente de 0 seguiremos sumandole h
        fprintf('|\t%d\t|\t%.2f\t|\t%.2f\t|\n',x,temp_a+h,s(x+1));
        temp_a = temp_a+h;
    else
        fprintf('|\t%d\t|\t%.2f\t|\t%.2f\t|\n',x,temp_a,s(x+1));% imprimos el valor de a en la tabla
    end    
end
%aplicando la formula 1/3 compuesta

aprox = (3*h/8)*(f(a)+3*(suma_1)+3*(suma_2)+2*(suma_3)+f(b));
fprintf('El valor aproximado de la integral es: %f',aprox);