clear all; close all; clc;

%domain
frequency = 1000;
Vpp = 5;
L = 1/frequency;
N = 1024;
dx = 2*L/(N-1);
x = -L:dx:L;

%functions
Sinus = 0*x;
Sinus(1:N) = sin(2*pi*frequency*x);
Square50 = 0*x;
Square50(1:N/2-1) = -Vpp/2;
Square50(N/2:N) = Vpp/2;
Square25 = 0*x;
Square25(1:N/4-1) = -Vpp/2;
Square25(N/4:N) = Vpp/2;
Triangle50 = 0*x;
Triangle50(1:N/2-1) = Vpp*(1:N/2-1)/N-(Vpp/2);
Triangle50(N/2:N) = -Vpp*(N/2:N)/N+(Vpp/2);
Triangle40 = 0*x;
Triangle40(1:(4*N/10-1)) = (Vpp/0.4*(1:4*N/10-1))/N-(Vpp*0.5);
Triangle40((4*N/10):N) = -(Vpp/0.6*(4*N/10:N))/N+(Vpp*0.8);

%fourier coefficient
[A, B] = fourier_coefficient(Sinus);
fourier_coefficient(Square50);
fourier_coefficient(Square25);
fourier_coefficient(Triangle50);
fourier_coefficient(Triangle40);