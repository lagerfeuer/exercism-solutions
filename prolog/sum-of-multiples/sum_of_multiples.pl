is_multiple([F|Factors], Number) :-
    mod(Number, F) =:= 0;
    is_multiple(Factors, Number).

sum_up(Factors, Limit, Sum, NewSum) :-
    is_multiple(Factors, Limit),
    NewSum is Limit + Sum;
    NewSum is Sum.

sum_of_multiples(_, 0, 0).
sum_of_multiples(Factors, Limit, Sum) :-
    NewLimit is Limit - 1,
    sum_of_multiples(Factors, NewLimit, NewSum),
    sum_up(Factors, Limit, NewSum, Sum).
