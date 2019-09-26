//19/12/18
//TP note de méthode numérique, exo1
//Anandou Candassamy

clear();

function [ExpAt] = matexp1(A, t, nmax, tol)
    [n, m]= size(A); //disp("here1");
    resultat = A^0; //disp("here1");
    cont = mtlb_true; //disp("here1");
    i = 1; //disp("here1");
    for i = 1:nmax
        if(abs(spec((t^i/factorial(i))*A^i))(1)) > tol
            resultat = resultat + ((t^i/factorial(i))*A^i);
            //disp("if")
        else
            //disp("else");
            break;
        end
    end
    ExpAt = resultat;
endfunction


