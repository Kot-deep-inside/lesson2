-module(lesson2_task08).
-export([compress/1]).

compress([]) -> [];
compress([H | T]) -> [H | compress(lists:dropwhile(fun(X) -> X == H end, T))].
