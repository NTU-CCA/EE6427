clc;
clear;

% H
a = 0.33
b = 0.44

% HU
d = b-a;
a0 = a;
a = a0 + d*0.77
b = a0 + d*0.88

% HUA
d = b-a;
a0 = a;
a = a0 + d*0.11
b = a0 + d*0.22

% HUAN
d = b-a;
a0 = a;
a = a0 + d*0.44
b = a0 + d*0.66

% HUANG
d = b-a;
a0 = a;
a = a0 + d*0.22
b = a0 + d*0.33

% HUANG'_'
d = b-a;
a0 = a;
a = a0 + d*0.00
b = a0 + d*0.11
 
% HUANG'_'Y
d = b-a;
a0 = a;
a = a0 + d*0.88
b = a0 + d*0.99

% HUANG'_'YO
d = b-a;
a0 = a;
a = a0 + d*0.66
b = a0 + d*0.77

% HUANG'_'YON
d = b-a;
a0 = a;
a = a0 + d*0.44
b = a0 + d*0.66

