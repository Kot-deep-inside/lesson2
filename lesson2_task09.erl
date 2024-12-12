-module(lesson2_task09).
-export([pack/1]).

pack([]) -> [];
pack([H | T]) -> 
    {Same, Rest} = lists:splitwith(fun(X) -> X == H end, T),
    [[H | Same] | pack(Rest)].
