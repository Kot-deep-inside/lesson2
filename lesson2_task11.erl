-module(lesson2_task11).
-export([encode_modified/1]).

encode_modified(L) ->
    lists:map(fun({1, X}) -> X; ({N, X}) -> {N, X} end, lesson2_task10:encode(L)).
