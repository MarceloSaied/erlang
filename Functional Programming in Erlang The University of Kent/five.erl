-module(five).
-export([fib/1,fibo/1]).


fib(N) when N == 1 orelse N == 2 ->
    1;
fib(N) when N == 3 ->
    2;
fib(N) when N > 3 ->
    fib(N-1) + fib(N-2).
    


fibo(0) -> 0;
fibo(1) -> 1;
fibo(N) -> fibo(N-1) + fibo(N-2).

