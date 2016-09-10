-module(strain).
-export([keep/2, discard/2]).

keep(Fun, List) ->
    produce_list_for(keep, Fun, List, []).
discard(Fun, List) ->
    produce_list_for(discard, Fun, List, List).

produce_list_for(_Keep_Discard, _Fun, [], Acc) ->
    Acc;
produce_list_for(keep, Fun, [H|T], Acc) ->
    produce_list_for(keep, Fun, T, add_to_list(Fun(H), H, Acc));
produce_list_for(discard, Fun, [H|T], Acc) ->
    produce_list_for(discard, Fun, T, remove_from_list(Fun(H), H, Acc)).

add_to_list(true, ItemToAdd, Acc) ->
    Acc ++ [ItemToAdd];
add_to_list(false, _, Acc) ->
    Acc.

remove_from_list(true, Item, Acc) ->
    Acc -- [Item];
remove_from_list(false, _, Acc) ->
    Acc.
