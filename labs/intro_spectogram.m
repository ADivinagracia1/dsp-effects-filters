close all
clear all
clc

load train;
Fs = 10e3;
Ts = 1/Fs;
t = linspace(0, length