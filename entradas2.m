%%------------------------------------------------------------------------
%% UNIVERSIDAD INTERNACIONAL DE LA RIOJA
%% M�ster en Ingenier�a Matem�tica y Computaci�n
%% Trabajo de Fin de M�ster
%% AUTOR: Santiago Alexander Rojas Porras
%%----------------------------------------------------------------
clc
clear
%% Datos de Entrada
num1=input('Ingrese el N�merador de la Funci�n de Transferencia de la Planta:  ');
den1=input('Ingrese el Denominador de la Funci�n de Transferencia de la Planta:  ');
P=tf(num1,den1);

num2=input('Ingrese el N�merador de la Funci�n de Transferencia de la V�lvula:  ');
den2=input('Ingrese el Denominador de la Funci�n de Transferencia del V�lvula:  ');
A=tf(num2,den2);
G=tf(conv(num1,num2),conv(den1,den2));

num3=input('Ingrese el N�merador de la Funci�n de Transferencia del Sensor:  ');
den3=input('Ingrese el Denominador de la Funci�n de Transferencia del Sensor:  ');
H=tf(num3,den3);


Kc=input('Ingrese La Constante Proporcional Kc: ');
ti=input('Ingrese La Constante Integra Ti: ');
td=input('Ingrese La Constante Derivativa Ti: ');

[Kc2,ti2,td2,IAE_act]=Optimizacion(G,H,Kc,ti,td)
