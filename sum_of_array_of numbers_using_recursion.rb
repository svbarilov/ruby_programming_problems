# sum of array of numbers using recursion

require 'pry'
def sum(ar)
  if ar.size == 1
    return ar[0]
  else
       return ar[0] + sum(ar.slice(1, ar.size))
  end 
end


puts sum([1, 2, 3, 4, 5, 6])