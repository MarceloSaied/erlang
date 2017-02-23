-module(eight).
-export([fibP/1]).

% fibo(N, Acumulador,previous+ N)
fibP(0) -> {0,1};

fibP(N) ->
    {P,C} = fibP(N-1),
    {C,P+C}.

