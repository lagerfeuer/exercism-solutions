binary(Str, Dec) :-
    string_chars(Str, Chars),
    binaryChars(Chars, Dec).

check(0).
check(1).

binaryChars([], 0).
binaryChars([S|Str], Dec) :-
    binaryChars(Str, Dec1),
    atom_number(S, Num),
    check(Num),
    length(Str, Len),
    Dec is Dec1 + Num * (2 ^ Len).
