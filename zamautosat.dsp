declare name "ZamAutoSat";
declare author "Damien Zammit";
declare copyright "2013";
declare version "1.00";
declare license "GPLv2";

saturate(x) = 2.0*x*(1.0 - abs(x)*0.5);

process = saturate;

