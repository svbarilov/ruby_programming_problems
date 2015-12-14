def fibonacci( n )
    return  n  if n <= 1
    fibonacci( n - 1 ) + fibonacci( n - 2 )
end


fibonacci = Hash.new{ |h,k| h[k] = k < 2 ? k : h[k-1] + h[k-2] }

a = 10
0.upto(a).each do |i|
  puts fibonacci(i)
end