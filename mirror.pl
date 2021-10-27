/*defining tree*/
tree(nil).
tree((Left,_,Right)) :-
    tree(Left),
    tree(Right).

/*mirror of tree*/
inverted(nil,nil).

inverted(t(Left1,Head,Right1), t(Right2,Head,Left2)) :-
    inverted(Left1,Left2),
    inverted(Right1,Right2).

/*query1
?-inverted(t(nil,a,t(nil,b,nil)), Result).
*/

/*query2
?-inverted(t(t(nil,b,nil),a,t(t(nil,d,nil),c,nil)), Result).
*/

%insert([3,2,5,7,1],nil,Tree). converting into inorder tree traversal :-
% inverted(t(t(t(nil,3,nil),2,t(nil,5,nil)),7,t(nil,1,nil)),Result). (for inorder traversal)
%inverted(t(t(t(nil,3,nil),2,t(nil,5,nil)),7,t(nil,1,nil)),Result).( query given in sample was for pre-order)