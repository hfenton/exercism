-module(accumulate).
-export([accumulate/2]).

accumulate(Function, List) ->
    apply_and_collect(Function, List, []).

apply_and_collect(_Function, [], Acc) ->
    Acc;
apply_and_collect(Function, [Head | Tail], Acc) ->
    apply_and_collect(Function, Tail, Acc ++ [Function(Head)]).
