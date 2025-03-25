function [X_train, y_train, X_pred, y_pred] = split_dataset(X, y, percentage)
    if percentage <= 0 || percentage >= 1
        error('procentaj invalid'); % Procentajul este invalid daca nu este un numar real cuprins intre 0 si 1, inclusiv
    end
    total_samples = size(X, 1); % Aflu numarul total de esantioane
    num_train = round(total_samples * percentage); % Le aflu pe cele care ma intereseaza
    if num_train == 0
        num_train = 1; % Daca rotunjirea e 0, schimb valoarea lui num_train, am gasit ce trebuie
    elseif num_train == total_samples
        num_train = total_samples - 1; % Altfel se repeta procesul pana ajung unde doresc
    end
    X_train = X(1 : num_train, :);
    y_train = y(1 : num_train); % Variabilele prelucrate pentru categoria de antrenament
    X_pred = X(num_train + 1:end, :);
    y_pred = y(num_train + 1:end); % Variabilele prelucrate pentru categoria de predictie
endfunction
