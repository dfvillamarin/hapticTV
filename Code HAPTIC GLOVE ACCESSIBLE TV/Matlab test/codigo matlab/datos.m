%%%%%%%ingreso de las muestras
function [n] = datos()
n=input('Ingrese el numero de muestras: ')
for i=1:n
 xaux=input(['Muestra ' num2str(i)  ' Para X:']);
 xi(i)=xaux;
 yaux=input(['Muestra ' num2str(i)  ' Para Y:']);
 yi(i)=yaux;
 zaux=input(['Muestra ' num2str(i)  ' Para Z:']);
 zi(i)=zaux;
end
n=n;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
