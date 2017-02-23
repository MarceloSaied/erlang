-module(seven).
-export([fib/1,fib/3,perfect/1,perfect/3]).

% fibo(N, Acumulador,previous+ N)
fib(N) -> fib(N,0,1).

fib(0,Previous,_Acumulator) ->
    Previous;

fib(N,Previous,Acumulador) ->
    fib(N-1,Acumulador,Acumulador+Previous).



perfect(N) -> perfect(N,1,0).

perfect(N,N,S) ->
    N==S;
perfect(N,M,S) when N rem M == 0 ->
    perfect(N,M+1,S+M);
perfect(N,M,S) ->
    perfect(N,M+1,S).

