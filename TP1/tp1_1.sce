//30/11/18
//Anandou Candassamy
//TP1 de Méthode Numérique exo 1

clear();


//disp(x)

function [v, lambda, iter, x, y] = puissance(A, x0, tol, itermax)
    xk = x0;
    lambda1 = 1;
    lambda2 = 0;
    iter = 1
    x = [];
    y = []
    while abs(lambda2 -lambda1) >= tol & iter<itermax  do
        x = [x, norm(xk)];
        y = [y, iter];
        lambda1 = lambda2;
        yk = xk(:)/norm(xk);
        xk = A * yk;
        lambda2 = yk'*xk;
        iter = iter + 1;
    end
    v = yk;
    lambda = lambda2;
endfunction

A = [-4,14,0; -5,13,0; -1,0,2]
A2 = [2 0 0; 0 0 0; 0 -2 1];
A3 = [2 1 0; 0 2 0; 0 0 1];

x0 = [6; 6; 6];

disp("matrice A")
[first, scd, thrd, x, y] = puissance(A, x0, 0.00000000000000000000000001, 100);
disp(first);
disp(scd);
disp(thrd);
clf();
//disp(x);
//disp(size(x));
//disp(size(y));
x = x - scd;
plot2d(y, x);
//drawnow();
disp(gsort(diag(A)));
//disp(spec(A));

disp("matrice A2")
[first, scd, thrd, x, y] = puissance(A2, x0, 0.00000000000000000000000001, 100);
disp(first);
disp(scd);
disp(thrd);
x = x - scd;
plot2d(y, x);
//disp(bdiag(A2));
//disp(spec(A2));

disp("matrice A3")
[first, scd, thrd, x, y] = puissance(A2, x0, 0.00000000000000000000000001, 100);
disp(first);
disp(scd);
x = x - scd;
plot2d(y, x);
//disp(thrd);
//disp(bdiag(A2));
disp(spec(A2));
