index_hash = Hash.new {|hash,key| hash[key] = hash[key - 1].next }.merge({0 => "A"})