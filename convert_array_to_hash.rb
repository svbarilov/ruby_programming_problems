Hash[array.map {|x| [x, true]}]




array.reduce({}) do |hash, true|
  hash.update(element => true)
end