clc;

%%%%%%%ingreso de las muestras

n=input('Ingrese el numero de muestras: ')
% for i=1:n
%  xaux=input(['Muestra ' num2str(i)  ' Para X:']);
%  xi(i)=xaux;
%  yaux=input(['Muestra ' num2str(i)  ' Para Y:']);
%  yi(i)=yaux;
%  zaux=input(['Muestra ' num2str(i)  ' Para Z:']);
%  zi(i)=zaux;
% end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% for i=1:n
%  %%%-1-%%%
%  if (xi(i)==1)&&(yi(i)==1)&&(zi(i)==1) ;
%  pos(i)=1;
%  %%%-2-%%%
%  elseif(xi(i)==2)&&(yi(i)==1)&&(zi(i)==1)
%  pos(i)=2;
%  %%%-3-%%%
%  elseif(xi(i)==3)&&(yi(i)==1)&&(zi(i)==1)
%  pos(i)=3;
%  %%%-4-%%%
%  elseif(xi(i)==4)&&(yi(i)==1)&&(zi(i)==1)
%  pos(i)=4;
%  %%%-5-%%%
%  elseif(xi(i)==5)&&(yi(i)==1)&&(zi(i)==1)
%  pos(i)=5;
%  %%%-6-%%%
%  elseif(xi(i)==1)&&(yi(i)==2)&&(zi(i)==1)
%  pos(i)=6;
%  %%%-7-%%%
%  elseif(xi(i)==2)&&(yi(i)==2)&&(zi(i)==1)
%  pos(i)=7;
%  %%%-8-%%%
%  elseif(xi(i)==3)&&(yi(i)==2)&&(zi(i)==1)
%  pos(i)=8;
%  %%%-9-%%%
%  elseif(xi(i)==4)&&(yi(i)==2)&&(zi(i)==1)
%  pos(i)=9;
%  %%%-10-%%%
%  elseif(xi(i)==5)&&(yi(i)==2)&&(zi(i)==1)
%  pos(i)=10;
%  %%%-11-%%%
%  elseif(xi(i)==1)&&(yi(i)==3)&&(zi(i)==1)
%  pos(i)=11;
%  %%%-12-%%%
%  elseif(xi(i)==2)&&(yi(i)==3)&&(zi(i)==1)
%  pos(i)=12;
%  %%%-13-%%%
%  elseif(xi(i)==3)&&(yi(i)==3)&&(zi(i)==1)
%  pos(i)=13;
%  %%%-14-%%%
%  elseif(xi(i)==4)&&(yi(i)==3)&&(zi(i)==1)
%  pos(i)=14;
%  %%%-15-%%%
%  elseif(xi(i)==5)&&(yi(i)==3)&&(zi(i)==1)
%  pos(i)=15;
%   %%%-16-%%%
%  elseif(xi(i)==1)&&(yi(i)==1)&&(zi(i)==2)
%  pos(i)=16;
%  %%%-17-%%%
%  elseif(xi(i)==2)&&(yi(i)==1)&&(zi(i)==2)
%  pos(i)=17;
%  %%%-18-%%%
%  elseif(xi(i)==3)&&(yi(i)==1)&&(zi(i)==2)
%  pos(i)=18;
%  %%%-19-%%%
%  elseif(xi(i)==4)&&(yi(i)==1)&&(zi(i)==2)
%  pos(i)=19;
%  %%%-20-%%%
%  elseif(xi(i)==5)&&(yi(i)==1)&&(zi(i)==2)
%  pos(i)=20;
%  %%%-21-%%%
%  elseif(xi(i)==1)&&(yi(i)==2)&&(zi(i)==2)
%  pos(i)=21;
%  %%%-22-%%%
%  elseif(xi(i)==2)&&(yi(i)==2)&&(zi(i)==2)
%  pos(i)=22;
%  %%%-23-%%%
%  elseif(xi(i)==3)&&(yi(i)==2)&&(zi(i)==2)
%  pos(i)=23;
%  %%%-24-%%%
%  elseif(xi(i)==4)&&(yi(i)==2)&&(zi(i)==2)
%  pos(i)=24;
%  %%%-25-%%%
%  elseif(xi(i)==5)&&(yi(i)==2)&&(zi(i)==2)
%  pos(i)=25;
%  %%%-26-%%%
%  elseif(xi(i)==1)&&(yi(i)==3)&&(zi(i)==2)
%  pos(i)=26;
%  %%%-27-%%%
%  elseif(xi(i)==2)&&(yi(i)==3)&&(zi(i)==2)
%  pos(i)=27;
%  %%%-28-%%%
%  elseif(xi(i)==3)&&(yi(i)==3)&&(zi(i)==2)
%  pos(i)=28;
%  %%%-29-%%%
%  elseif(xi(i)==4)&&(yi(i)==3)&&(zi(i)==2)
%  pos(i)=29;
%  %%%-30-%%%
%  elseif(xi(i)==5)&&(yi(i)==3)&&(zi(i)==2)
%  pos(i)=30;
%   %%%-31-%%%
%  elseif(xi(i)==1)&&(yi(i)==1)&&(zi(i)==3) 
%  pos(i)=31;
%  %%%-32-%%%
%  elseif(xi(i)==2)&&(yi(i)==1)&&(zi(i)==3)
%  pos(i)=32;
%  %%%-33-%%%
%  elseif(xi(i)==3)&&(yi(i)==1)&&(zi(i)==3)
%  pos(i)=33;
%  %%%-34-%%%
%  elseif(xi(i)==4)&&(yi(i)==1)&&(zi(i)==3)
%  pos(i)=34;
%  %%%-35-%%%
%  elseif(xi(i)==5)&&(yi(i)==1)&&(zi(i)==3)
%  pos(i)=35;
%  %%%-36-%%%
%  elseif(xi(i)==1)&&(yi(i)==2)&&(zi(i)==3)
%  pos(i)=36;
%  %%%-37-%%%
%  elseif(xi(i)==2)&&(yi(i)==2)&&(zi(i)==3)
%  pos(i)=37;
%  %%%-38-%%%
%  elseif(xi(i)==3)&&(yi(i)==2)&&(zi(i)==3)
%  pos(i)=38;
%  %%%-39-%%%
%  elseif(xi(i)==4)&&(yi(i)==2)&&(zi(i)==3)
%  pos(i)=39;
%  %%%-40-%%%
%  elseif(xi(i)==5)&&(yi(i)==2)&&(zi(i)==3)
%  pos(i)=40;
%  %%%-41-%%%
%  elseif(xi(i)==1)&&(yi(i)==3)&&(zi(i)==3)
%  pos(i)=41;
%  %%%-42-%%%
%  elseif(xi(i)==2)&&(yi(i)==3)&&(zi(i)==3)
%  pos(i)=42;
%  %%%-43-%%%
%  elseif(xi(i)==3)&&(yi(i)==3)&&(zi(i)==3)
%  pos(i)=43;
%  %%%-44-%%%
%  elseif(xi(i)==4)&&(yi(i)==3)&&(zi(i)==3)
%  pos(i)=44;
%  %%%-45-%%%
%  elseif(xi(i)==5)&&(yi(i)==3)&&(zi(i)==3)
%  pos(i)=45;
%  end
%  
% end


for i=1:n 
r=0.4;
[x1,y1,z1]=sphere();
grafico;
surf(r*x1+xi(i)-0.5,r*y1+yi(i)-0.5,r*z1+zi(i)-0.5)
pause(0.5);
cla
end







