-module(leap).
-export([leap_year/1]).


leap_year(Year) when Year rem 4 == 0 ->
    divisible_by_100(Year);
leap_year(_Year) ->
    false.

divisible_by_100(Year) when Year rem 100 == 0 ->
    Year rem 400 == 0;
divisible_by_100(_Year) ->
    true.
