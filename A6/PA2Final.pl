/*****************************************************************************************************
Assignment # 6
Authors:  Gallant, Dave 490 8089
          Andrews, Caitlin 489 8572
          Hill, Graeme 500 0095

Last Revised: 4/05/05

*************************************************************************************************** */

%predicate map(Rs, RCs), succeeds iff RCs is an acceptable assignment of colours for a list Rs
%of regions

%base case 1
%the predicate is called with zero regions, and any list of RCs

map([], []).

%recursive case

map([First|Rest], [First/C|RCs]) :- map(Rest,RCs), member(C, [red, blue, yellow, green]),
 acceptable(First, C, RCs).

 
%predicate acceptable(R, C, RCs) that tests whether it would be acceptable to add the association 
%list RCs, i.e. no region adjoining R is assigned colour C by association list RCs

%base case, empty association list
acceptable(R,C,[]).

 
%case where a colour match exists in the first element of the list RCs  
acceptable(R,C,[S/C|RCs]) :-  not(adj(R,S)), acceptable(R,C, RCs).

%case where no colour match exists in the first element of the lsit RCs
acceptable(R,C, [S/D|RCs]) :- D\= C, acceptable(R,C, RCs).


%must verify that if any region S is assigned colour C by RCs, S is not adjacent to R.
%predicate adj(S,R) that asserts that regions S & R do share a border

%database of facts

adj(a,b).
adj(b,a).
adj(a,c).
adj(c,a).
adj(a,d).
adj(d,a).
adj(b,e).
adj(e,b).
adj(c,e).
adj(e,c).
adj(c,f).
adj(f,c).
adj(c,d).
adj(d,c).
adj(d,f).
adj(f,d).
adj(e,f).
adj(f,e).
adj(b,c).
adj(c,b).








