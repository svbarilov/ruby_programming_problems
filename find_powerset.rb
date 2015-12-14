# Pseudo-algorithm
#
#
# Is the set passed empty? Done
# If not, take an element out
# recursively call method on the remainder of the set
# return the set composed of the Union of
# (1) the powerset of the set without the element (from the recursive call)
# (2) this same set (i.e., (1)) but with each element therein unioned with the element initially taken out