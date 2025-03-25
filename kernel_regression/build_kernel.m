function [K] = build_kernel(X, f, f_param)
    m = size(X, 1); % aflu, prin intermediul valorii m, numarul de linii pentru X
    K = zeros(m, m); % Initializez kernelul cu valoarea nula
    for i = 1 : m
        for j = 1 : i % Pentru o eficienta mai buna a codului, s-a parcurs un for direct pana la diagonala matricei
            K(i, j) = f(X(i, :), X(j, :), f_param); % Pentru a construi kernelul, aflu valoarea acestuia intre i si j
            K(j, i) = K(i, j); % Matricea este simetrica
        end
    end
endfunction
