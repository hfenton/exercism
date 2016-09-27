-module(sum_of_multiples).
-export([ sumOfMultiples/2 ]).

sumOfMultiples(SomeList, MaxValue) ->
    sum_list_to_max_value(SomeList, MaxValue, []).

sum_list_to_max_value([], _MaxValue, Acc) ->
    lists:sum(lists:usort(Acc));
sum_list_to_max_value([H|T], MaxValue, Acc) ->
    sum_list_to_max_value(T, MaxValue, Acc ++ lists:seq(H, MaxValue - 1, H)).

