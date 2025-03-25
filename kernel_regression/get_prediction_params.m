function [a] = get_prediction_params(K, y, lambda)
    n = size(K, 1); % n este numarul de linii al lui K
    A = K + lambda * eye(n); % Construiesc A astfel incat lambda sa fie prezent doar pe diagonala
    a = A \ y; % Aflu a din ecuatie
endfunction
