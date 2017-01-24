The variable a is bound to the value 2. Which of the following will match?

[ a, b, a ] = [ 1, 2, 3 ]
# cannot match on a (values 1 and 3)

[ a, b, a ] = [ 1, 1, 2 ]
# cannot match on a, two simultaneous values

a = 1
# this is fine, a is rebound to 1

^a = 2
# this is okay, the pin operator uses the previous value and it matches

^a = 1
# this cannot match, the value is bound to 2

^a = 2 - a
# a is pinned to 2; it cannot also be zero for this to match.

