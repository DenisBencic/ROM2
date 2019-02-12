function r = ali_je_sedlo(A, i, j)  minVrstice = min(A(i, :));  maxStolpca = max(A(:, j));  maxVrstice = max(A(i, :));  minStolpca = min(A(:, j));  r = (A(i,j) == minVrstice && A(i,j) == maxStolpca) || (A(i,j) == maxVrstice && A(i,j) == minStolpca);
endfunction
