-module(words).
-export([word_count/1]).

word_count(Text) ->
  Regex = re:split(Text, " "),
  list_count(Regex).

list_count([]) -> 0;

list_count(String) ->
    [_ | Tail] = String,
    1 + list_count(Tail).
