%Assignment # 5
%PA1.pl
%Authors:  Gallant, Dave 490 8089
%          Andrews, Caitlin 489 8572
%          Hill, Graeme 500 0095

% 1. Facts

inside(house,farmer).
inside(duckpen,ducks).
inside(duckpen,eggs).

connected(duckpen,yard).
connected(house,yard).
connected(yard,duckpen).
connected(yard,house).

% 2. Rules

movable(A,X,Y) :- inside(X,A), connected(X, Y).
near(X,Y) :- X \= Y, inside(A, X), inside(A, Y). 

% 3. More Rules

% base case
%moves(X, From, To) :- inside(X,From), connected(From, To). 

% recusive case
moves(X, From, To) :- inside(From, X), moves1(From, To).


%write a helper rule to say whether location any two locations are
%connected

moves1(Place1, Place1).
moves1(Place1, Place2) :- connected(Place1, Middleplace), moves1(Middleplace, Place2).
