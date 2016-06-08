/*****************************************************************************************************
Assignment # 6
Authors:  Gallant, Dave 490 8089
          Andrews, Caitlin 489 8572
          Hill, Graeme 500 0095

Last Revised: 3/24/05

*************************************************************************************************** */

%First colour association list

[a/green, b/red, c/yellow, d/blue, e/blue, f/red].

%[1,2,3,4].

%Second colour association list

%[ a/purple, b/white, c/green, d/orange, e/purple, f/white].


%predicate map(Rs, RCs), succeeds iff RCs is an acceptable assignment of colours for a list Rs
%of regions

%base case 1
%the predicate is called with zero regions, and any list of RCs

map([], []).

%recursive case

%map([Head|Tail], RCs) :- map([Head|Tail], RCs),  member(C, [red,blue,yellow,green]), acceptable(Head, C, RCs), map(Tail, [H%ead/C | RCs])
                      
map(Tail, [Head/C | RCs]) :- map([Head|Tail], RCs), member(C, [red, blue, yellow, green]), acceptable(Head, C, RCs).


%predicate acceptable(R, C, RCs) that tests whether it would be acceptable to add the association list
%RCs, i.e. no region adjoining R is assigned colour C by association list RCs

%base case, empty association list
acceptable(R,C,[]).

%if colour selected is a member of the association list, make sure it isn't adjacent to the region being
%assigned that colour

%if colour selected is not a member, then the region can be assigned that colour

acceptable(R,C, [Head|Tail]) :- member(S/C, [Head|Tail]), not(adj(R,S)); not(member(S/C, [Head|Tail])).  
  

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


%predicate map(Rs, RCs) that succeeds iff RCs is an acceptable assignment of colours for a list Rs of regions






