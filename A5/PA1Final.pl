%Assignment # 5
%PA1.pl
%Authors:  Gallant, Dave 490 8089
%          Andrews, Caitlin 489 8572
%          Hill, Graeme 500 0095

% 1. Facts

inside(house,farmer).
inside(duckpen,duck).
inside(duckpen,eggs).

connected(duckpen,yard).
connected(yard,duckpen).
connected(house,yard).
connected(yard,house).

% 2. Rules

movable(A,X,Y) :- inside(X,A), connected(X, Y).
near(X,Y) :-  inside(A,X), inside(A,Y), X \= Y. 

% 3. More Rules

% succeeds if X is in location From and can be moved to location To using any
% number of moves, with possible intermediate locations
 
moves(X, From, To) :- inside(From, X), moves1(From, To).


%A helper rule to say whether any two locations are
%connected

%base case
moves1(Place1, Place2) :- connected(Place1, Place2).

%recursive case
moves1(Place1, Place2) :- connected(Place1, Middleplace), moves1(Middleplace, Place2).

