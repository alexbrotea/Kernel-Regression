function [P] = get_lower_inverse (L)
    L = cholesky(A, 'lower'); % Folosesc cholescky pentru a scrie L ca o matrice inferior triunghiulara
    U = L \ eye(sizeof(A)); % Scriu U in functie de L pentru a obtine matricea superior triunghiulara
    Ainv = L' \ U; % Scriu inversa lui A ca raportul invers dintre L transpus si U
endfunction
