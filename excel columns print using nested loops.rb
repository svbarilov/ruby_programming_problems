# excel columns print using nested loop


require "pry"

def printout(n)
  let = *("a".."z")
  num = *(0..25)
  map = num.zip(let).to_h
  ar =[]

  
  
  while true do
    break if n == 0
 
 
    # increment one or add razryad
    if ar.size >= 2
  
      ar = ar.reverse
      
      ar.each_with_index do |a, i|
        if (a == 25) && (i == (ar.size - 1))
          # binding.pry
          a = 0
          ar << 0 if ar[i+1].nil?
          ar[i+1] += 1 if a <25
          # binding.pry
          break
        # elsif (a == 25)
   #        a = 0
   #        ar[i-1]+=1
   #        break
        end
      end
    end  
   
      ar = ar.reverse
   
   
      if (ar.size == 1)
        ar[0] = 0  
        ar << 0
      end
 
 
      ar << 0 if (ar.size == 0)  


      1.upto(25) do |s|
        ar.each {|i| puts map[i]}
        puts " "
        ar[ar.size - 1]  =  s
        ar.each {|i| puts map[i]} if s == 25
        puts " "  if s == 25
        n -= 1
        break if n == 0
      end



    end
  
  end





  printout 1000