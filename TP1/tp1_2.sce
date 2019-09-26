//30/11/18
//Anandou Candassamy
//TP1 de Méthode Numérique exo 2

clear();
//sclf();

function [v, lambda, iter] = puissanceInv(A, x0, tol, itermax)
    xk = x0;
    lambda1 = 1;
    lambda2 = 0;
    iter = 0;
    while (abs(lambda2 -lambda1) >= tol & iter<itermax) do
        lambda1 = lambda2;
        yk = xk/norm(xk);
        Ainv = A^-1;
        xk = A\yk;
        lambda2 = 1/(yk'*xk);
        iter = iter + 1;
    end
    v = yk;
    lambda = lambda2;
endfunction

A = [-4,14,0; -5,13,0; -1,0,2]
A2 = [2 0 0; 0 0 0; 0 -2 1];
A3 = [2 1 0; 0 2 0; 0 0 1];

x0 = [6; 6; 6];

[first, scd, thrd] = puissanceInv(A, x0, 1e-10, 100);
disp(first);
disp(scd);
disp(thrd);
disp(bdiag(A));
disp(spec(A));

//[first, scd, thrd] = puissanceInv(A2, x0, 1e-10, 100);
//disp(first);
//disp(scd);
//disp(thrd);
//disp(bdiag(A2));
//disp(spec(A2));

[first, scd, thrd] = puissanceInv(A3, x0, 1e-10, 100);
disp(first);
disp(scd);
disp(thrd);
disp(bdiag(A3));
disp(spec(A3));


