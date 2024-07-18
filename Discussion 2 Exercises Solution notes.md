Problem 4, Part D was omitted from the solutions. It is presented here.

D\) What is t_pd of the fastest equivalent circuit (i.e. one that
implements the same function) built using only the three components
listed above?

Lets start by reducing the logic equation....I'm going to use three
intermediary signals, alpha, beta and gamma, and pull identity numbers
from the slides

alpha=!(A+B) beta=!(alpha+A) gamma=!(alpha+!B) OUT=!(beta+gama)

OUT=!(!(alpha+A) + !(alpha+!B)) substitution OUT=!(!(!(A+B)+A) +
!(!(A+B)+!B)) substitution OUT=!(!(!A\*!B+A) + !(!A\*!B+!B)) demorgans
OUT=!!(!A\*!B+A) \* !!(!A\*!B+!B) demorgans OUT= (!A\*!B+A) \*
(!A\*!B+!B) identity 4 elementary OUT= (!A\*!B+A) \* (!B) identity 10
absorption OUT= (!A\*!B+A\*!B) identity 8 distributivity OUT= !B (!A +
A) identity 8 distributivity OUT= !B 5 elementary

Since this can be implemented with a single inverter, the smallest
propagation delays is 1ns.

[Category:FPGAWorkshop](Category:FPGAWorkshop)
