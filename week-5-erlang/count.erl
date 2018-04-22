-module(count).
-export([count_until/1]).

count_until(Val, Max) when Val < Max ->
  io:fwrite("~w~n", [Val]),
  count_until(Val + 1, Max);
count_until(_, Max) ->
  io:fwrite("~w~n", [Max]).
count_until(Max) ->
  count_until(0, Max).