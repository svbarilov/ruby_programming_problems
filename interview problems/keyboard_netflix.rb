def type_text(string)
virtual_keyboard = { "A" => [1,1],"B" => [1,2],"C" => [1,3],"D" => [1,4],
                   "E" => [2,1],"F" => [2,2],"G" => [2,3],"H" => [2,4],
                   "I" => [3,1],"J" => [3,2],"K" => [3,3],"L" => [3,4],
                   "M" => [4,1],"N" => [4,2],"O" => [4,3],"P" => [4,4],
                   "Q" => [5,1],"R" => [5,2],"S" => [5,3],"T" => [5,4],
                   "U" => [6,1],"V" => [6,2],"W" => [6,3],"X" => [6,4],
                   "Y" => [7,1],"Z" => [7,2]," " => [7,3]
                  }
string = string.upcase
#let’s transfer string character to it’s indices
size_of_string = string.size
i=0
string_ind=[]
size_of_string.times do
  string_ind<<virtual_keyboard[string[i]]
  i+=1
end

current_position = [1,1]
string_ind.each do |el|
  x = el[0]-current_position[0]
  y = el[1]-current_position[1]
    if x >= 0
      x.times{puts "Down"}
    elsif x<0
      x.abs.times{puts "Up"}
    end

    if y >= 0
      y.times{puts "Right"}
    elsif y < 0
      y.abs.times{puts "Left"}
    end
  puts "ENTER"
  current_position=[el[0],el[1]]
end
end

type_text("ALEKS")