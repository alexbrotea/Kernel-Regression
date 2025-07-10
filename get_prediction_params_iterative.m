function [a] = get_prediction_params_iterative(K, y, lambda)
    n = size(K, 1); % n este numarul de linii al lui K
    A = K + lambda * eye(n); % Construiesc A astfel incat lambda sa fie prezent doar pe diagonala
    x0 = zeros(n, 1); % Initializez vectorul de start pentru metoda iterativa
    tol = 1e-6; % Stabilesc toleranta pentru aceasta metoda
    max_iter = 1000; % Stabilesc numarul maxim de iteratii pentru aceasta metoda
    if exist('pcg', 'file') % Verific conditia gradientului conjugat
        [a, flag] = pcg(A, y, tol, max_iter); % Afisarea daca pcg e corespunzator
    else
        a = conjugate_gradient(A, y, x0, tol, max_iter); % Afisarea daca pcg nu e corespunzator
    end
endfunction
