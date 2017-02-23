-module(six).
-export([countdown/1]).

countdown(N) when N>0 ->
    io:format("~p~n",[N]),
    countdown(N - 1);
countdown(_N) ->
    io:format("end~n").