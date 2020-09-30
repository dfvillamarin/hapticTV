% funtion [sal1,sal2]=nombredelprograma(ent1,ent2)
%end

%%%%%%%%%%%%mallado de la cancha de futbol
%f(x)=x^2+x+1
function y = grafico() 
[x,y]=meshgrid(0:1:5, 0:1:3);
z1=0.*x+0;
z2=0.*x+1;
z3=0.*x+2;
mesh(x,y,z1)
hold on
mesh(x,y,z2)
hold on
mesh(x,y,z3)
hold on
end
%%%%%%%%%%%  mallado