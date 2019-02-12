function [rezultat] = izracunaj_oceno2(povprecje)  rezultat = zeros(length(povprecje), 1);  rezultat(povprecje >= 50 & povprecje < 60) = 6;  rezultat(povprecje >= 60 & povprecje < 70) = 7;  rezultat(povprecje >= 70 & povprecje < 80) = 8;  rezultat(povprecje >= 80 & povprecje < 90) = 9;  rezultat(povprecje >= 90) = 10;
end
