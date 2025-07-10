function [L] = cholesky(A)
    if size(A, 1) ~= size(A, 2)
        error('Matricea nu este patratica.'); % Verific conditia ca matricea sa fie patratica, adica sa aiba numarul de linii egal cu cel de coloane
    end
    if ~isequal(A, A')
        error('Matricea nu este simetrica.'); % Verific conditia ca matricea sa fie simetrica, adica sa fie egala cu transpusa sa
    end

    n = size(A, 1); % n este numarul de linii al lui A
    L = zeros(n, n);  % Initializez L cu matricea nula
    for i = 1 : n
        for j = 1 : i % Din nou fac parcurgerea forului direct pana la diagonala
            sum_k = sum(L(i, 1 : j - 1) .* L(j, 1 : j - 1));  % In acest for fac suma produselor pentru elementele care ma intereseaza
            if i == j  % Aici e cazul cand se ajung la elementele aflate fix pe diagonala
                L(i, j) = sqrt(A(i, i) - sum_k);
            else  % Aici e cazul cand ajung la elementele aflate sub diagonala
                L(i, j) = (A(i, j) - sum_k) / L(j, j);
            end
        end
        if isnan(L(i, i)) || isinf(L(i, i))
            error('Matricea nu este pozitiv definita.'); % Daca nu am conditia matematica de pozitiv definitivitate, afisez mesajul corespunzator
        end
    end
endfunction
