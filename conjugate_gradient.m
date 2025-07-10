function [x] = conjugate_gradient(A, b, x0, tol, max_iter)
    x = x0; % Initializez solutia x cu x0
    r = b - A * x; % Aflu r
    p = r; % Initializez p cu r, adica directia de cautare
    rsold = r' * r; % Fac produsul scalar intre transpusa lui r si r
    for i = 1 : max_iter 
        Ap = A * p; % Fac produsul intre matricea A si directia de cautare solicitata
        alpha = rsold / (p' * Ap); % Ajustez solutia prin alpha
        x = x + alpha * p; % Estimez solutia
        r = r - alpha * Ap; % Daca e cazul, actualizez valoarea lui r
        rsnew = r' * r;
        if sqrt(rsnew) < tol % Verific indeplinirea tolerantei posibile
            break;
        end
        p = r + (rsnew / rsold) * p; % Actualizez directia de cautare si termin iteratia
        rsold = rsnew; % Incep alta iteratie
    end
endfunction