# datos_condiciones_ransol_campo_de_velocidad1.png

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

#csvwrite("tiempo.csv", t');
#csvwrite("velocidad.csv", vz');
subplot (1, 2, 1);
plot(t,vz,"*", "markersize", 7,t,vz);
##title ("velocidad 0.085");
xlabel ("tiempo [s]");
ylabel ("velocidad [m/s]");
grid ("minor","on");
axis([0,1100]);
subplot (1, 2, 2);
plot(t,vz,"*", "markersize", 7,t,vz);
##title ("velocidad 0.085");
xlabel ("tiempo [s]");
ylabel ("velocidad [m/s]");
grid ("minor","on");
axis([49500,50600]);

print('grafica1_0085.png','-dpng',"-S1280,600");



