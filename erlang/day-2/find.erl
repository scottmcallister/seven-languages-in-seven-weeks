-module(find).
-export([find_by_key/2]).

% finds a value in a given list with an associated key
find_by_key([{Key, Val}|_], Key) -> Val;
find_by_key([_|Tail], Key) -> find_by_key(Tail, Key).

