BROTEA FLORIN-ALEXANDRU, TEMA 1 MN, 314CA
Task 1: Detectia anomaliilor
In functia gaussian_distribution.m, am calculat densitatea de probabilitate a unei distributii
normale multivariate pentru un set de date de test, acesta fiind deja dat, utilizand mediile si 
variantele calculate din datele de antrenament, pentru a evalua daca se gasesc anomalii intr-un 
anumit punct de date nou comparativ cu distributia modelata.
Functia estimate_gaussian.m calculeaza parametrii (mediile și variantele) distributiei gaussiene 
pentru un set de date de antrenament. Acest pas este fundamental pentru a stabili daca in datele
observate totul e in regula si nu avem parte de alte anomalii.
In functia optimal_threshold.m determin pragul optim pentru identificarea anomaliilor. Prin compararea
probabilitatilor calculate cu diferite praguri posibile, functia evalueaza performanta fiecarui prag
in termeni de precizie, recall și scor F1, alegand pragul care maximizeaza scorul F1.
Functia optimal_threshold.m este proiectata pentru a determina cel mai bun prag astfel incat sa putem 
distinge datele bune si cele cu anomalii. Se optimizeaza un scor, de exemplu, F1, pentru a gasi un 
a descoperi cat mai multe anomalii reale si a reduce numărul de alarme false.

Task 2: Kernel Regression
Functia build_kernel.m construieste o matrice de kernel folosind o functie de kernel specificata pentru 
a transforma datele intr-un spatiu de caracteristici mai mare, facilitand modelarea relatiilor neliniare 
in date.
Functia cholesky.m efectueaza descompunerea Cholesky a unei matrice simetrice pozitiv definite, oferind o 
metoda numerica stabila pentru a rezolva sistemele de ecuatii liniare.
Functia conjugate_gradient.m implementeaza metoda gradientului conjugat, o tehnica eficienta pentru rezolvarea 
sistemelor de ecuatii liniare cu matrici sparse sau simetrice pozitiv definite.
Functia eval_value.m evalueaza valoarea unei functii intr-un punct dat, folosind o functie de kernel si parametrii 
modelului pentru a face predictii.
Functia gaussian_kernel.m calculeaza kernelul Gaussian (sau RBF) intre doua puncte, o metoda comuna pentru a introduce 
neliniaritate in modelele de invatare automata.
Functia get_lower_inverse.m calculeaza inversa unei matrice inferior triunghiulara, importanta pentru descompunerile 
matriceale si optimizari.
Functia get_prediction_params_iterative.m foloseste metode iterative pentru a calcula parametrii unui model, optimizand 
calculul pentru matrici mari sau sparse.
Este similara cu functia iterativa, dar foloseste metode directe pentru a obtine parametrii modelului, cum ar fi inversarea 
directa a matricei sau descompunerea.
Functia linear_kernel.m calculeaza produsul scalar intre doi vectori, reprezentand cea mai simpla forma de kernel.
Functia polynomial_kernel.m genereaza un kernel polinomial, care extinde relatiile liniare la polinoame de un anumit grad.
Pentru functia get_lower_inverse.m, credite: Santosh Tiwari, de pe forumul site-ului matlabcentral

Task 3: Markov Text Generation
Functia distinct_k_secv.m extrage secventele unice dintr-un array de secvente, eliminand duplicatele si asigurand un set de 
secvente distincte pentru analiza sau procesarea ulterioara a datelor.
Functia distinct_words.m returneaza un array de cuvinte unice dintr-un array de cuvinte dat, facilitand gestionarea vocabularului
in aplicatiile de procesare a limbajului natural.
Functia k_secv_idx.m creeaza un dictionar care parcurge cu map fiecare k-secventa unica la un index numeric unic, facilitand accesul
rapid si asigura eficienta.
Functia k_secv.m genereaza un array de k-secvente dintr-un array de token-uri, fiecare secventa fiind formata din k tokenuri consecutive.
Functia stochastic_matrix.m construieste o matrice stocastica bazata pe secventele k si cuvintele asociate, folosind indexarile din 
k_secv_idx.m si word_idx.m pentru a alinia secventele cu probabilitatile lor corespunzatoare.
Functia word_idx.m creeaza un dictionar care asociaza fiecare cuvant unic cu un index numeric, similar cu k_secv_idx.m, dar specific pentru 
cuvinte.