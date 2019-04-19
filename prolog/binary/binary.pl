binary(Str, Dec) :-
    string_chars(Str, Chars),
    binaryChars(Chars, Dec).

check(Num) :-
    (Num is 0; Num is 1; fail), !.

binaryChars([], 0).
binaryChars([S|Str], Dec) :-
    binaryChars(Str, Dec1),
    atom_number(S, Num),
    check(Num),
    length(Str, Len),
    Dec is Dec1 + Num * (2 ^ Len).
