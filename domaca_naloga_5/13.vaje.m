(* ::Package:: *)

1.naloga

3.podnaloga
podatki = dlmread('kolokviji.csv', ',')

4. podnaloga
vsota = sum(podatki, 2)
povprecje = mean(podatki, 2)

5.podnaloga
ocene = izracunaj_oceno(povprecje)

6.podnaloga
zaporedje = (1:length(ocene))'
rezultat = [zaporedje, podatki, vsota, povprecje, ocene]

7.podnaloga
dlmwrite('kolokviji.csv', rezultat, ',')

8. podnaloga
disp('Tip rezultata')
class(rezultat)

disp('Tipi stolpcev')
class(podatki)
class(vsota)
class(povprecje)
class(zaporedje)
class(ocene)

povprecje = round(mean(podatki, 2))
ocene = izracunaj_oceno(povprecje)
rezultat = [zaporedje, podatki, vsota, povprecje, ocene]

dlmwrite('rezultati_celi.csv', rezultat, ',')


2.naloga

1. podnaloga

hist(ocene)

2. podnaloga
pkg install -forge 10
pkg install -forge statistics
pkg load statistics

- 1. moznost
frekvence = tabulate(ocene)

- 2. moznost
izracunaj = @(n) length(ocene(ocene == n))
arrayfun(izracunaj, 6:10) % 'map' za matlab

- 3. moznost
frekvence = zeros(1, 5)
frekvence = (6:10)*0
for n = 6:10
  frekvence(n - 5) = length(ocene(ocene == n))
end

class(frekvence)

3. podnaloga
bar(6:10, frekvence(6:10, 3))

4. podnaloga
slika = figure()
bar(6:10, frekvence(6:10, 3), 'facecolor', 'r', 'edgecolor', 'b')
title('Porazdelitev ocen kolokvija')
xlabel ("Ocene");
ylabel ("Stevilo studentov");
text (10, 10, "Bravo!");
print(slika, 'slika.pdf')


3. naloga

A = narascajoca(4)



4. naloga
A = [1, -5, 3; 4, -1, 2; 2, -2, 1]

1. podnaloga

Je = ali_je _sedlo(A, 2, 2)

2. podnaloga

Koliko = stevilo_sedel(A)

3. podnaloga

Koliko2 = stevilo_sedel2(A)

tic ; stevilo_sedel (A) ; toc ; % 0.00378084 s
tic ; stevilo_sedel2(A) ; toc ; % 0.00398588 s

% kljub uporabi zanke for je prva funkcija hitrejsa.



5. naloga

1. podnaloga

Devetdeset = rotacija(pi / 2)

2. podnaloga

interval = linspace(-3, 3, 100)
funkcija = interval^3
T = [interval; funkcija]
Zasuk = rotacija(pi / 4) * T % Dobimo 2x100 matriko abscis in ordinat funkcije x^3 na intervalu [-3, 3], zasukane za kot 45\[Degree]
x = Zasuk(1,:) % prva vrstica predstavlja abscise zasukane funkcije
y = Zasuk(2,:) % druga vrstica predstavlja ordinate zasukane funkcije
plot(x, y)
