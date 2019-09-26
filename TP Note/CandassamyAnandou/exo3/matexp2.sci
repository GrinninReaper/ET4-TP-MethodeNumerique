//19/12/18
//TP note de méthode numérique, exo3
//Anandou Candassamy

function [ExpAt] = matexp2(A, t)
    [R, S] = spec(A);
    expS = expm(S*t); //le résultat sera celui voulu car S est diagonale
    ExpAt = R*expS*R^-1;
endfunction
