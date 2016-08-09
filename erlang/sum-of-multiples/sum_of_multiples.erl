-module(sum_of_multiples).
-export([ sumOfMultiples/2 ]).

sumOfMultiples(SomeList, MaxValue) ->
    sum_list_to_max_value(SomeList, MaxValue, []).

sum_list_to_max_value([], _MaxValue, Acc) ->
    lists:sum(lists:usort(Acc));
sum_list_to_max_value([H|T], MaxValue, Acc) ->
    sum_list_to_max_value(T, MaxValue, get_multiples(H, H, MaxValue, Acc)).

get_multiples(NumberToCheck, OriginalNumber, MaxValue, Acc) when NumberToCheck < MaxValue ->
    get_multiples(NumberToCheck + OriginalNumber, OriginalNumber, MaxValue, Acc ++ [NumberToCheck]);
get_multiples(_NumberToCheck, _OriginalNumber, _MaxValue, Acc) ->
    Acc.
