-module(err).
-export([print_msg/1]).

print_msg(success) -> io:fwrite("Success~n");
print_msg({error, Message}) ->
    io:fwrite("error: ~s~n", [Message]).