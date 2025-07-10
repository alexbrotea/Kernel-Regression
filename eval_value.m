function pred = eval_value(x, X, f, f_param, a)
    m = size(X, 1); % Aflu numarul de randuri al lui X
    pred = 0; % Initializez cu 0 predictia
    for i = 1 : m
        pred = pred + a(i) * f(x, X(i, :), f_param); % Evaluez si returnez predictia ceruta prin actualizarea specifica, adica adaug la predictia intiala produsul dintre coeficientul lui a(i) si valoarea kernelului
    end
endfunction