-module('rna_transcription').
-export([to_rna/1]).


to_rna("G") ->
    "C";
to_rna("C") ->
    "G";
to_rna("T") ->
    "A";
to_rna("A") ->
    "U";
to_rna(Other) ->
    split_and_transcribe(lists:split(1, Other), []).

split_and_transcribe({FirstItem, []}, Accumulator) ->
    Accumulator ++ to_rna(FirstItem);
split_and_transcribe({FirstItem, RestOfList}, Accumulator) ->
    split_and_transcribe(lists:split(1, RestOfList), Accumulator ++ to_rna(FirstItem)).

