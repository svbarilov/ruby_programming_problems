def sum (enum)
  enum.reduce(0) do |accumulator, element|
    accumulator + element
  end
end


def sum (enum)
  enum.reduce(0, :+)
end