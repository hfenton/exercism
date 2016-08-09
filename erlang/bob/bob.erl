-module(bob).
-export([response_for/1]).


response(Question) when Question =:= "Whoa, chill out!" ->
    ok;
response_for(Question) ->
    "Whatever.".
