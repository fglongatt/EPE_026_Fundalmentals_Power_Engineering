%% TUTORIAL: AC STEADY-STATE: POWER
% Created by: Dr Francisco Gonzalez-Longatt
% Version 10, 17.02.2008
% Q1. An AC voltage generator of peak voltage Vm = 1000 V and w= 400 rad/sec 
% is connected to a load of resistance R = 100 Ohms, inductance L =100 mH and 
% capacitance C = 25 microF connected in series.
clc
clear
fprintf(' TUTORIAL: AC Steady-state analysis: Power -solution \n\n')
%% INPUT DATA
Vm = 1000;  % Vm: Peak voltage in Volts
w = 400;    % w: angular speed in radian per seconds
R = 100;    % R: Resistance in Ohms
L = 100e-3; % L: Inductance in Henry
C = 25e-6;  % C: Capacitance in Faradio
%% Calculating the RMS value
V = Vm / sqrt(2);
fprintf(' |V| = %3.3f V (rms value) \n', V)
%% Calculating the frecuency (f)
f = w / (2 * pi);    % Frequency in Hertz
fprintf(' f = %3.3f Hz \n', f)
%% The voltage phasor:
fprintf(' V = %3.5f < %5.3f° \n', abs(V), angle(V)*180/pi)
fprintf(' V = %3.5f + %5.3f \n', real(V), imag(V))
%% Calculating the Inductive Reactance (XL)
XL = w * L;
fprintf(' XL = %3.3f Ohms \n', XL)
%% Calcalating the capacitive reactance (XC)
XC = 1 / (w * C);
fprintf(' XC = %3.3f Ohms \n', XC)
%% Calculating the total impedance (Z)
Z = R + i*(XL - XC);     % Total Impedance in Ohms
fprintf(' |Z| = %3.3f Ohms \n', abs(Z))
fprintf(' angle|Z| = %3.3f Ohms \n', angle(Z)*180/pi)
fprintf(' Z = %3.3f < %3.3f° Ohms\n', abs(Z), angle(Z)*180/pi)
fprintf(' Z = %3.3f + %3.3fj Ohms\n', real(Z), imag(Z))
%% Calculating the circuit current (I), suing the Ohm's Law
I = V/Z;        % Total circuit current in Amps
fprintf(' I = %3.3f < %3.3f° A \n', abs(I), angle(I)*180/pi)
fprintf(' I = %3.3f + %3.3fj A \n', real(I), imag(I))
%% Calculating the power factor
pf = cos (angle(I));
fprintf(' pf = %3.3f  \n', pf)
%% Calculating the active power
P = abs(V) * abs(I) * cos (angle(I));
fprintf(' P = %3.3f W \n', P)
%% Calculating the reactive power
Q = abs(V) * abs(I) * sin (angle(I));
fprintf(' Q = %3.3f var \n', Q)
S = V * conj(I) ;
fprintf(' S = %3.3f < %3.3f° VA\n', abs(S), angle(S)*180/pi)
fprintf(' S = %3.3f + %3.3fj VA \n', real(S), imag(S))
