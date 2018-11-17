%Programa simpson 1/3
clc;%limpia la pantalla
%ejemplo (x)/(x+1)*(x+2)
fprintf('Proyecto Simpson 1/3 Compuesta \n');
funcion = input('Ingrese la funcion:','s'); %el parametro 's' es para que no evalue la entrada

f = inline(funcion);%convierte la entrada en una funcion para poderla evaluar
a = input('Ingrese el numero inferior de la integral:');%captura el valor de a
b = input('Ingrese el numero superior de la integral:');%captura el valor de b
n = input('Ingrese la cantidad de veces que de sea aplicar el metodo Numero Par:');% ingresa el numero de iteraciones

h = (b-a)/n; %calculando h que es el numero de intervalos que hay entre los puntos
s = zeros(n);% se reserva en memoria el espacio del arreglo dependiendo el tamaño de la n
fprintf('valor de h:%.2f \n',h);

temp_a = a; %se guarda el valor de a en un temporal porque se requiere cambiar su valor para no afectar el original

for x=0:n %ciclo for desde x=0 hasta n de 1 en 1
    if(x~=0) %preguntamos si el valor de x es diferente a 0 y si es diferente entonces le sumamos el valor de h
        s(x+1) = f(temp_a+h);     
        temp_a = temp_a+h;
    else
        s(x+1) = f(temp_a);% cuando el valor de x es 0, no ocupamos sumarle el valor de h ya que es el primer valor de la tabla 
    end
  
end

sumImpar = 0; %se iguala a 0 para no generar errores en la sumatoria
%suma de Impares
for x=1:2:n  %ciclo for desde x=1 hasta n sumando de 2 en 2 ejemplo, 1,3,5,7 
    sumImpar = sumImpar + s(x+1); %vamos guardando la sumatoriai de todos los impares de la Y ejem:fx1,fx3,fx5  
end

%suma de pares 
sumPar = 0; %se iguala a 0 para no generar errores en la sumatoria
for x=2:2:n-1   %ciclo for desde x=2 hasta n sumando de 2 en 2 ejemplo, 2,4,6,8 
    sumPar = sumPar + s(x+1);    %vamos guardando la sumatoriai de todos los pares de la Y ejem: fx2,fx4,fx6  
end

%Crear tabla 
temp_a = a; %guardamos en un temporal la variable a porque ocuparemos modificar su valor
for x=0:n
    if(x~=0)% preguntamos si x es diferente para sumarle el valor de h en cada iteracion
        fprintf('|\t%d\t|\t%.2f\t|\t%.2f\t|\n',x,temp_a+h,s(x+1));%se impreme la tabla '%d' numero entero que va desde x=0 hasta n
        temp_a = temp_a+h; %el valor va incrementando en cada iteracion
    else
        fprintf('|\t%d\t|\t%.2f\t|\t%.2f\t|\n',x,temp_a,s(x+1));
    end    
end
%aplicando la formula 1/3 compuesta

aprox = (h/3)*(f(a)+4*(sumImpar)+2*(sumPar)+f(b));% calculamos la formula de simpson 1/3 compuesta
fprintf('El valor aproximado de la integral es: %f',aprox);%se impre el resultado