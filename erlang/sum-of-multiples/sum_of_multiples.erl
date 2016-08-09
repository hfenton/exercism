-module(sum_of_multiples).
-export([ sumOfMultiples/2 ]).

sumOfMultiples(SomeList, MaxValue) ->
    sum_list_to_max_value(SomeList, MaxValue, []).

sum_list_to_max_value([], _MaxValue, Acc) ->
    lists:foldl(fun(X, Sum) -> X + Sum end, 0, Acc);
sum_list_to_max_value([H|T], MaxValue, Acc) ->
    sum_list_to_max_value(T, MaxValue, get_multiples(H, H, MaxValue, Acc)).

get_multiples(NumberToCheck, OriginalNumber, MaxValue, Acc) when NumberToCheck < MaxValue ->
    get_multiples(NumberToCheck + OriginalNumber, OriginalNumber, MaxValue, add_to_list_no_duplicates(Acc, NumberToCheck));
get_multiples(_NumberToCheck, _OriginalNumber, _MaxValue, Acc) ->
    Acc.

add_to_list_no_duplicates(List, Number) ->
    case string:str(List, [Number]) of
        0 ->
            List ++ [Number];
        _ ->
            List 
    end.
