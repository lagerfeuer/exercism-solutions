real((R,_), R).

imaginary((_,I), I).

conjugate((R,I), (RC,IC)) :-
  RC is R, IC is -I.

abs((R,I), A) :-
  A is sqrt(R * R + I * I).

add((R1, I1), (R2, I2), (R3, I3)) :-
  R3 is R1 + R2, I3 is I1 + I2.

sub((R1, I1), (R2, I2), (R3, I3)) :-
  R3 is R1 - R2, I3 is I1 - I2.

mul((R1, I1), (R2, I2), (R3, I3)) :-
  R3 is R1 * R2 - I1 * I2,
  I3 is I1 * R2 + R1 * I2.

div((R1, I1), (R2, I2), (R3, I3)) :-
  D is R2 * R2 + I2 * I2,
  R31 is R1 * R2 + I1 * I2,
  R3 is R31 / D,
  I31 is I1 * R2 - R1 * I2,
  I3 is I31 / D.
