%  Condition for P greater than Q.
greater(P,Q):- P > Q.
% Condition for P lesser than Q.
lesser(P,Q) :- P < Q.

% base case
% if the list of nodes to be inserted is empty then the tree remains same.
insert([],Tree,Tree).

% inserting list of nodes.
% inserting all the nodes from the list recursively using insert.
insert([P|Ps], Tree, Result):-
  makenode(Tree, P, NewTree),
  insert(Ps, NewTree, Result).

% creating a node
makenode(nil, P ,t(P, nil ,nil)).

% checking if a duplicate exists in the tree.
makenode(t(P, Left, Right), P, t(P, Left, Right)):-!. 

% inserting P to left subtree if P is smaller than root
makenode(t(Root, Left, Right), P, t(Root, NLeft, Right)):-
  lesser(P, Root),!,makenode(Left, P, NLeft). 


% inserting P to right subtree if P is larger than root
makenode(t(Root, Left, Right), P, t(Root, Left, NRight)):-
  greater(P, Root),!,makenode(Right, P, NRight).

%query1 insert([3],t(2, t(1,nil,nil),t(5, nil, t(6, nil, nil))),Tree).
%query2 insert([5], t(3,t(2,nil,nil),t(6,t(4,nil,nil),nil)), Tree).
%query for const bst insert([],t(2, t(1,nil,nil),t(5, nil, t(6, nil, nil))),Tree).

% insert([],t(3, t(2, t(1, nil, nil), nil), t(5, nil, t(7, nil, nil))),Tree). const tree-given in question

