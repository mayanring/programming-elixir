[ a, b, a ] = [ 1, 2, 3 ]
# this cannot match as it tries to match a to both 1 and 3

[ a, b, a ] = [ 1, 1, 2 ]
# this cannot match as it tries to match a to both 1 and 2

[ a, b, a ] = [ 1, 2, 1 ]
# this matches
