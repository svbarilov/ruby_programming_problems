# def self.bubble_sort(container)
#     loop do
#       swapped = false
#       (container.size-1).times do |i|
#         if (container[i] <=> container[i+1]) == 1
#           container[i], container[i+1] = container[i+1], container[i] # Swap
#           swapped = true
#         end
#       end
#       break unless swapped
#     end
#     container
#   end
  
require 'pry'
#   def bublesort(array)
#     loop do
#       swapped = false
#       (array.size-1).times do |i|
#         if (array[i] <=> array[i+1]) == 1
#           array[i], array[i+1] = array[i+1], array[i]
#           swapped = true
#       end
#     end
#     break unless swapped
#   end
#   array
# end
#




# array = [1, 2, 3, 4, 5, 6, 7]
# number = 8
# (0..array.size).flat_map{|n| array.combination(n).to_a}.each do |ar|
#   sum =  ar.inject {|memo, n| memo + n}
#   puts ar.inspect if sum == number
# end


# class Array
#
#   def combination(num)
#     self
#   end
#
#   # def combinations(array)
#  #    m = array.length
#  #    (1...2**m).map do | n |
#  #      (0...m).select { | i | n[i] == 1 }.map { | i | array[i] }
#  #    end
#  #  end
#
#
# end # end class


# def fibonacci( n )
#     return  n  if n <= 1
#     fibonacci( n - 1 ) + fibonacci( n - 2 )
# end


# fibonacci = Hash.new{ |h,k| h[k] = k < 2 ? k : h[k-1] + h[k-2] }
#
# a = 10
# 0.upto(a).each do |i|
#   puts fibonacci(i)
# end



# string searching naive algorithm
# to_search = "phil dropped his phone and dropped the drop"
# to_find = "drop"
#
# number_of_matches = 0
# 0.upto(to_search.size) do |start_index|
#   match_count = 0
#   while to_search[start_index + match_count] == to_find[match_count] do
#     match_count += 1
#     if to_find.size == match_count
#       puts "match_found"
#       number_of_matches += 1
#       puts number_of_matches
#       break if (start_index + match_count) == to_search.size
#     end
#   end
# end





# def column(num)
#     # divmod returns array of quotient and modulus and assigns each value to result and remainder variables
#     result, remainder = num.divmod(26)
#     if remainder == 0
#       result -= 1
#       remainder = 26
#     end
#     final_letter = ('a'..'z').to_a[remainder - 1]
#     if result > 0
#       previous_letters = column(result)
#     else
#       previous_letters = " "
#     end
#     print "#{previous_letters}#{final_letter}".upcase
# end
#
# def print_columns num
#   num.times do |i|
#     column i + 1
#   end
# end


# def excel(num)
#  result, remainder = num.divmod(26)
#
#  letter = excel(result) if result > 0
#   print letter
# end
#
# excel(30)
#
#
# index_hash = Hash.new {|hash,key| hash[key] = hash[key - 1].next }.merge({0 => "A"})



# class Numeric
#   Alph = ("A".."Z").to_a
#   def alph
#     s, q = "", self
#     (q, r = (q - 1).divmod(26)) && s.prepend(Alph[r]) until q.zero?
#     s
#   end
# end
#
# puts (137).alph #=> "AA"


#
# def excel(x)
#   let = *("a".."z")
#   num = *(0..25)
#   map = num.zip(let).to_h
#   # puts map
#   x, c = x.divmod(26)
#   # if x == 0
#  #    x = 26
#  #    c -= 1
#  #  end
#   # puts "x: #{x}"
# #   puts "c: #{c}"
#   excel(x)   if x>0
#   print c
#   # puts "" if x>0
# end
#
# def print_all(num)
#   1.upto(num) do |column|
#     excel(column)
#   end
# end
#
# excel 26

# print_all 55




# def hanoi(n, a, b, c)
#   if n > 1
#     hanoi(n-1, a, c, b)
#     puts "#{a} -> #{b}"
#     hanoi(n-1, c, b, a)
#   else
#     puts"#{a} -> #{b}"
#   end
# end
#
#
# hanoi(6, "a", "b", "c")
#
  
# def pechat(d, v)
# n=1
#  1.upto(d) do |i|
#    1.upto(v) do |k|
#      print "#{n} "
#      n += 1
#    end
#    puts ""
#  end
# end
#
#
# pechat(4, 4)



def spiral(n)
  spiral = Array.new(n) {Array.new(n, nil)}     # n x n array of nils
  runs = n.downto(0).each_cons(2).to_a.flatten  # n==5; [5,4,4,3,3,2,2,1,1,0]
  delta = [[1,0], [0,1], [-1,0], [0,-1]].cycle
  x, y, value = -1, 0, -1
  for run in runs
    dx, dy = delta.next
    run.times { spiral[y+=dy][x+=dx] = (value+=1) }
  end
  spiral
end
 
def print_matrix(m)
  width = m.flatten.map{|x| x.to_s.size}.max
  m.each {|row| puts row.map {|x| "%#{width}s " % x}.join}
end
 
print_matrix spiral(5)

