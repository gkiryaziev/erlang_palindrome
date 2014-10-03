-module(main).
-export([start/0]).

start() ->
  MainList = lists:seq(100, 1000),
Result = [[{L1 * L2}, {L1, L2}] || L1 <- MainList, L2 <- MainList, integer_to_list(L1 * L2) =:= lists:reverse(integer_to_list(L1 * L2))],
Fin = lists:max(Result),
[{Res},{A,B}] = Fin,
io:format("~p * ~p = ~p~n", [A, B, Res]).
