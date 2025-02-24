%% TUTORIAL AC STEADY-STATE: EQUIVALENT IMPEDANCE
% Created by Dr Francisco Gonzalez-Longatt 05.03.2017
% Consider the circuit shown in Figure Q2. Calculate: 
% (a) 	The total branch impedance Z1 , Z2 and Z3 in Ohms. 		
% (b) 	Total parallel impedance Zp  -see Figure Q2.	
% (c) 	Total equivalent impedance between a, and b, Zab in Ohms.	
% (d) 	Total circuit current (I1) in Amps 	
% (e) 	The branch currents I2 and I3 –see Figure Q2.
clc
clear
fprintf('TUTORIAL AC STEADY-STATE: EQUIVALENT IMPEDANCE \n\n');
%% INPUT DATA
R1 = 10;
R2 = 20;
R3 = 10;
X1 = 20;
X2 = 25;
Xc = -30;
V = 200;
%% CALCULATIONS
% a) 	The total branch impedance Z1  in Ohms.
Z1 = R1 + i * X1;
fprintf('Z1 = (%4.4f + %4.4fj)Ω \n',real(Z1),imag(Z1))
fprintf('Z1 = (%4.4f ∠ %4.4f)Ω \n',abs(Z1),angle(Z1)*180/pi)
% The total branch impedance Z2  in Ohms.
Z2 = R2 + i * X2;
fprintf('Z2 = (%4.4f + %4.4fj)Ω  \n',real(Z2),imag(Z2))
fprintf('Z2 = (%4.4f ∠ %4.4f°)Ω \n',abs(Z2),angle(Z2)*180/pi)
% The total branch impedance Z3  in Ohms.
Z3 = R3 + i * Xc;
fprintf('Z3 = (%4.4f + %4.4fj)Ω  \n',real(Z3),imag(Z3))
fprintf('Z3 = (%4.4f ∠ %4.4f°)Ω \n',abs(Z3),angle(Z3)*180/pi)
% (b) 	Total parallel impedance Zp  -see Figure Q2.	
Zp = Z2*Z3/(Z2+Z3);
fprintf('Zp = (%4.4f + %4.4fj)Ω ',real(Zp),imag(Zp))
fprintf('Zp = (%4.4f ∠ %4.4f°)Ω',abs(Zp),angle(Zp)*180/pi)
% (c) 	Total equivalent impedance between a, and b, Zab in Ohms.	
ZT = Z1 + Zp;
fprintf('ZT = (%4.4f + %4.4fj)Ω',real(ZT),imag(ZT))
fprintf('ZT = (%4.4f ∠ %4.4f°)Ω',abs(ZT),angle(ZT)*180/pi)
% (d) 	Total circuit current (I1) in Amps 	
I1 = V / ZT;
fprintf('I1 = (%4.4f + %4.4fj)A',real(I1),imag(I1))
fprintf('I1 = (%4.4f ∠ %4.4f°)A',abs(I1),angle(I1)*180/pi)
% Calculating VP
Vp = Zp * I1;
fprintf('Vp = (%4.4f + %4.4fj)V',real(Vp),imag(Vp))
fprintf(['Vp = (%4.4f ∠ %4.4f°)V'],abs(Vp),angle(Vp)*180/pi)
% (e) 	The branch currents I2 and I3 –see Figure Q2.
I2 = Vp / Z2;
fprintf('I2 = (%4.4f + %4.4fj)A',real(I2),imag(I2))
fprintf('I2 = (%4.4f ∠ %4.4f°)A',abs(I2),angle(I2)*180/pi)
I3 = Vp / Z3;
fprintf('I3 = (%4.4f + %4.4fj)A',real(I3),imag(I3))
fprintf('I3 = (%4.4f ∠ %4.4f°)A',abs(I3),angle(I3)*180/pi)

