a = [1, 2, 3]
# this will match a to [1,2,3]

a = 4
# this will match a to 4

4 = a
# this will match a to 4 again

[a, b] = [ 1, 2, 3 ]
# this cannot match


a = [ [ 1, 2, 3 ] ]
# this matches

[a] = [ [ 1, 2, 3 ] ]
# this matches a to [1, 2, 3]

[[a]] = [ [ 1, 2, 3 ] ]
# this matches a to [1,2,3]
