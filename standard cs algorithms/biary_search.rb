# binary search

# pseudocode example binary search
# def binarySearch( A, n, value ):
# if n = 1:
# if A[ 0 ] = value:
# return true
# else:
# return false
# if value < A[ n / 2 ]:
# return binarySearch( A[ 0...( n / 2 - 1 ) ], n / 2 - 1, value )
# else if value > A[ n / 2 ]:
# return binarySearch( A[ ( n / 2 + 1 )...n ], n / 2 - 1, value )
# else:
# return true


# Search a sorted array in O(lg(n)) time
def binary_search(array, value, from=0, to=nil)
    if to == nil
        to = array.count - 1
    end

    mid = (from + to) / 2

    if value < array[mid]
        return binary_search array, value, from, mid - 1
    elsif value > array[mid]
        return binary_search array, value, mid + 1, to
    else
        return mid
    end
end

############################################################################################


# Binary Search: This search finds an item in log(n) time provided that the container is already sorted.
 # The method returns the item if it is found, or nil if it is not. If there are duplicates, the first one
 # found is returned, and this is not guaranteed to be the smallest or largest item.
 #
 # Complexity: O(lg N)
 # 
 #   Algorithms::Search.binary_search([1, 2, 3], 1) #=> 1
 #   Algorithms::Search.binary_search([1, 2, 3], 4) #=> nil
 def self.binary_search(container, item)
   return nil if item.nil?
   low = 0
   high = container.size - 1
   while low <= high
     mid = (low + high) / 2
     val = container[mid]
     if val > item
       high = mid - 1
     elsif val < item
       low = mid + 1
     else
       return val
     end
   end
   nil
 end
 
############################################################################################



# Recursive Pseudocode:
# // initially called with low = 0, high = N-1
#  BinarySearch(A[0..N-1], value, low, high) {
#      // invariants: value > A[i] for all i < low
#                     value < A[i] for all i > high
#      if (high < low)
#          return not_found // value would be inserted at index "low"
#      mid = (low + high) / 2
#      if (A[mid] > value)
#          return BinarySearch(A, value, low, mid-1)
#      else if (A[mid] < value)
#          return BinarySearch(A, value, mid+1, high)
#      else
#          return mid
#  }

# #Recursive code
class Array
  def binary_search(val, low=0, high=(length - 1))
    return nil if high < low
    mid = (low + high) >> 1
    case var <=> self[mid]
      when -1
        binary_search(val, low, mid - 1)
      when 1
        binary_search(val, mid + 1, high)
      else mid
    end
  end
end

ary = [0,1,4,5,6,7,8,9,12,26,45,67,78,90,98,123,211,234,456,769,865,2345,3215,14345,24324]

[0,42,45,24324,99999].each do |val|
  i = ary.binary_search(val)
  if i
    puts "found #{val} at index #{i}: #{ary[i]}"
  else
    puts "#{val} not found in array"
  end
end

############################################################################################



# Iterative Pseudocode:
# BinarySearch(A[0..N-1], value) {
#     low = 0
#     high = N - 1
#     while (low <= high) {
#         // invariants: value > A[i] for all i < low
#                        value < A[i] for all i > high
#         mid = (low + high) / 2
#         if (A[mid] > value)
#             high = mid - 1
#         else if (A[mid] < value)
#             low = mid + 1
#         else
#             return mid
#     }
#     return not_found // value would be inserted at index "low"
# }

# Iterative code
class Array
  def binary_search_iterative(val)
    low, high = 0, length - 1
    while low <= high
      mid = (low + high) >> 1
      case var <=> self[mid]
        when 1
          low = mid + 1
        when -1
          high = mid - 1
        else
          return mid
      end
    end
    nil
  end
end

ary = [0,1,4,5,6,7,8,9,12,26,45,67,78,90,98,123,211,234,456,769,865,2345,3215,14345,24324]

[0,42,45,24324,99999].each do |val|
  i = ary.binary_search_iterative(val)
  if i
    puts "found #{val} at index #{i}: #{ary[i]}"
  else
    puts "#{val} not found in array"
  end
end

############################################################################################



