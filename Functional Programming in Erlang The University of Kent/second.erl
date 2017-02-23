-module(second).
-import(first,[mult/2,area/3]). 
-export([hypotenuseLenght/2,triangle_perimeter/2,triangle_area/2]).


square(X) ->
    first:mult(X,X).

hypotenuseLenght(A,B) ->
    math:sqrt((square(A))+(square(B))).

triangle_perimeter(A,B) ->
   H =  hypotenuseLenght(A,B),
   A + B + H.

triangle_area(A,B) ->
    (B*A)/2.


