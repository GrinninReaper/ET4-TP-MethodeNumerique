//19/12/18
//TP note de méthode numérique, exo3
//Anandou Candassamy

A = [-6, -2, 2,; 0, -2, -4; 3, 1, -1];
t1 = 0.1; t2 = 3.0;

rslt1 = matexp2(A, t1);
rslt2 = matexp2(A, t2);

disp(rslt1, "Résultat de la fonction pour t = 0.1");
disp(expm(A*t1), "Résultat donnée par scilab pour t=0.1");

disp(rslt2, "Résultat de la fonction pour t=3.0");
disp(expm(A*t2), "Résultat donnée par scilab pour t=3.0");


//Réponse:
//on voit bien que les résultats sont identiques
