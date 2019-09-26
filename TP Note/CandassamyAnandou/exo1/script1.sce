//19/12/18
//TP note de méthode numérique, exo1
//Anandou Candassamy


A = [-6, -2, 2,; 0, -2, -4; 3, 1, -1];
x0 = [1; 2; 2];
t1=0.1; t2=3.0;
tol = 1.162D-16;
nmax = 100;

rslt = matexp1(A, t1, nmax, tol);
disp(rslt, "Résultat de la fonction");
disp(expm(A*t1), "Résultat de scilab");

rslt2 = matexp1(A, t2, nmax, tol);
disp(rslt2, "Résultat de la fonction");
disp(expm(A*t2), "Résultat de scilab");

xrslt = matexp1(A, t2, nmax, tol)*x0;
disp(xrslt, "Solution x(t)");

x = zeros(3, 100);
t = linspace(0,3);

for i = 1:100
    x(1,i) = (matexp1(A, t(i), nmax, tol)*x0)(1);
    x(2,i) = (matexp1(A, t(i), nmax, tol)*x0)(2);
    x(3,i) = (matexp1(A, t(i), nmax, tol)*x0)(3);
end

plot(x(1,:), t)
plot(x(2,:), t)
plot(x(3,:), t)

