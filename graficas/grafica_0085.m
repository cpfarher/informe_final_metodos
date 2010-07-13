# datos_condiciones_ransol_campo_de_velocidad.png

clear all;
close all;


tf = 51000;
T  = 100;
t  = [0:T:tf-T];
n=length(t);

vel=0.085;	 #velocidad
m=vel/(500-100); #pendiente	

vz=zeros(1,n);

for i = 1:n
if (t(i)<=100)
	vz(i)=0;
else

	if(t(i)>100&t(i)<=500)
		vz(i)=m*(t(i)-100);
		else 
			vz(i)=vel;  # en la captura decia z en vez de vz  ???
	
	endif
endif

endfor

plot(t,vz);
title ("velocidad 0.085");
xlabel ("tiempo");
ylabel ("velocidad");
grid ("minor","on");
print('grafica_0085.png','-dpng');
