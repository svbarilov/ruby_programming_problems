
def excel(x)
  let = *("a".."z")
  num = *(0..25)
  map = num.zip(let).to_h
  # puts map
  x, c = x.divmod(26)
  # if x == 0
 #    x = 26
 #    c -= 1
 #  end
  # puts "x: #{x}"
#   puts "c: #{c}"
  excel(x)   if x>0
  print c
  # puts "" if x>0
end

def print_all(num)
  1.upto(num) do |column|
    excel(column)
  end
end

excel 26

print_all 55