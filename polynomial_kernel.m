function retval = polynomial_kernel(x, y, d)
    retval = (1 + x * y') ^ d; % Aflu kernelul polinomial, prin produsul scalar al lui x cu y adunat cu 1, totul la puterea d
endfunction
