# excel columns letter-indexed print using recursion


def column(num)
    # divmod returns array of quotient and modulus and assigns each value to result and remainder variables
    result, remainder = num.divmod(26)
    if remainder == 0
      result -= 1
      remainder = 26
    end
    final_letter = ('a'..'z').to_a[remainder - 1]
    if result > 0
      previous_letters = column(result)
    else
      previous_letters = " "
    end
    print "#{previous_letters}#{final_letter}".upcase
end

def print_columns num
  num.times do |i|
    column i + 1
  end
end

print_columns 100