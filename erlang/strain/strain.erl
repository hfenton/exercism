-module(strain).
-export([keep/2, discard/2]).

keep(Fun, List) ->
    keep(Fun, List, []).
discard(Fun, List) ->
    discard(Fun, List, List).

keep(_Fun, [], Acc) ->
    Acc;
keep(Fun, [H|T], Acc) ->
    keep(Fun, T, add_to_list(Fun(H), H, Acc)).

add_to_list(true, ItemToAdd, Acc) ->
    Acc ++ [ItemToAdd];
add_to_list(false, _, Acc) ->
    Acc.

discard(_Fun, [], Acc) ->
    Acc;
discard(Fun, [H|T], Acc) ->
    discard(Fun, T, remove_from_list(Fun(H), H, Acc)).

remove_from_list(true, Item, Acc) ->
    Acc -- [Item];
remove_from_list(false, _, Acc) ->
    Acc.
