//19/12/18
//TP note de méthode numérique, exo2
//Anandou Candassamy

tol = 1.162D-16;
nmax = 100;

A = [-6, -2, 2,; 0, -2, -4; 3, 1, -1];
expA = matexp1(A, 1, nmax, tol);

lambda = spec(A);
nu = spec(expA);

disp(lambda, "Valeurs propres de A");
disp(nu, "Valeurs proprse de exponentielle de A");

disp("Exponentiel des valeurs propres de A");
for i =  1:3
    disp(exp(lambda(i)));
end

//on voit bien le résultat demandé

[R, S] = spec(A);
[R1, S1] = spec(expA);
/*
disp(R(1,:)*expA); disp(R(1,:));
disp(R(2,:)*expA); disp(R(2,:));
disp(R(3,:)*expA); disp(R(3,:));
*/
disp(R); disp(R1);

//on voit qu'on obtient les mêmes vecteurs modulo un intervertissement entre laes première et deuxième colonnes de la deuxième matrice

