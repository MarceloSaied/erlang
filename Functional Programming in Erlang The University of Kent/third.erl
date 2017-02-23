-module(third).
% -import(first,[mult/2,area/3]). 
-export([maxThree/3,howManyEqual/3,xOr1/2,xOr2/2,xOr3/2]).

xOr1(X,Y) -> X =/= Y.
xOr2(true,X) -> not(X).
xOr3(false,X) -> X.

maxThree(A,B,C) ->
    M = max(A,B),
    max(M,C).


howManyEqual(A, A, A) ->
    3;
howManyEqual(_, A, A) ->
    2;
howManyEqual(A, _, A) ->
    2;
howManyEqual(A, A, _) ->
    2;
howManyEqual(_, _, _) ->
    0.
    