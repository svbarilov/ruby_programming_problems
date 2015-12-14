array = [1, 2, 3, 4, 5, 6, 7]
number = 8
(0..array.size).flat_map{|n| array.combination(n).to_a}.each do |ar|
  sum =  ar.inject {|memo, n| memo + n}
  puts ar.inspect if sum == number
end