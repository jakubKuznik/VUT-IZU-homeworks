% Zadání č. 20:
% Napište program řešící úkol daný predikátem u20(LIN,LOUT), kde LIN je  
% vstupní celočíselný seznam a LOUT je výstupní seznam obsahující všechny  
% prvky seznamu LIN, které mají liché hodnoty. 

% Testovací predikáty:                          	% LOUT        
u20_1:- u20([5,-3,2,4,12,-3,1,0,6,-2],LOUT), 
        write(LOUT).					% [5,-3,-3,1]
u20_2:- u20([6, -4, 2, 4, 12, 6, -2], LOUT),
        write(LOUT).					% []
u20_3:- u20([5, -3, -17, -3, -15], LOUT),
	write(LOUT).					% [5,-3,-17,-3,-15]
u20_r:- write('Zadej LIN: '),read(LIN),
        u20(LIN,LOUT),write(LOUT).


% porovnani =:= je jako == v c 
% přířazeni a is 5
% :- je pravda prave tehdy kdyz (implikace <- opačným směrem)
% ! ukončí nevyhodnocuje další 
% [] seznam

%u20(LIN,LOUT):-
% Podívej se na začátek seznamu je li H % 2 == 1 ulož do LOUT jinak přeskoč
% znova se zavolej nad zbytekm seznamu
u20(LIN,LOUT):- u(LIN,LOUT).
u([],[]).
u([H|T],LOUT) :- u(T, LOUT) , H mod 2 =:= 0,!. 
u([H|T],LOUT) :- u(T, A) , pushToList(H, A, LOUT).

% uloz do seznamu prvek 
pushToList(Item, List, [Item|List]).
