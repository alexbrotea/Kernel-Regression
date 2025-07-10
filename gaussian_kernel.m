function retval = gaussian_kernel(x, y, sigma)
    squared_distance = sum((x - y) .^ 2); % Calculez distanta patratica dintre doua puncte situate la x si y
    retval = exp(-squared_distance / (2 * sigma ^ 2)); % Pun in aplicare calcularea distantei patratice pentru a afla valoarea kernelului gaussian
endfunction