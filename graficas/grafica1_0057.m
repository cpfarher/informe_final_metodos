# datos_condiciones_ransol_campo_de_velocidad1.png

clear all;
close all;


tf = 51000;
T  = 100;
t  = [0:T:tf-T];
n=length(t);

vel=0.057;	 #velocidad
m=vel/(500-100); #pendiente	

vz=zeros(1,n);

for i = 1:n
if (t(i)<=100|t(i)>50400)
	vz(i)=0;
else

	if(t(i)>100&t(i)<=500)
		vz(i)=m*(t(i)-100);
	else 
		if(t(i)>500&t(i)<=50000)
			vz(i)=vel;
		else
			vz(i)=(-1)*m*(t(i)-50400);
	endif
		endif
endif

endfor

plot(t,vz);
title ("velocidad 0.057");
xlabel ("tiempo");
ylabel ("velocidad");
grid ("minor","on");
print('grafica1_0057.png','-dpng');
