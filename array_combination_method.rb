class Array

  def combination(num)
    self
  end

  def combinations(array)
    m = array.length
    (1...2**m).map do | n |
      (0...m).select { | i | n[i] == 1 }.map { | i | array[i] }
    end
  end


end # end class