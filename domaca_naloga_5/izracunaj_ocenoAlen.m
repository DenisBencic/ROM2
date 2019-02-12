function [ ocena ] = izracunaj_oceno(procenti)  rezultat = procenti * 0;  rezultat(procenti < 50) = 0;  rezultat(procenti >= 50 & procenti < 60) = 6;  # pozor: enojni '&'  rezultat(procenti >= 60 & procenti < 70) = 7;  rezultat(procenti >= 70 & procenti < 80) = 8;  rezultat(procenti >= 80 & procenti < 90) = 9;  rezultat(procenti >= 90) = 10;  ocena = rezultat;
endfunction
