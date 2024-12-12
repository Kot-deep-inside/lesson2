-module(lesson2_task06).
-export([is_palindrome/1]).

is_palindrome([]) -> true;
is_palindrome([_]) -> true;
is_palindrome([H | T]) ->
    case lists:last(T) of
        H -> is_palindrome(lists:sublist(T, 1, length(T) - 1));
        _ -> false
    end.
