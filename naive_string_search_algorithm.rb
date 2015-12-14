#string searching naive algorithm
to_search = "phil dropped his phone and dropped the drop"
to_find = "drop"

number_of_matches = 0
0.upto(to_search.size) do |start_index|
  match_count = 0
  while to_search[start_index + match_count] == to_find[match_count] do
    match_count += 1
    if to_find.size == match_count
      puts "match_found"
      number_of_matches += 1
      puts number_of_matches
      break if (start_index + match_count) == to_search.size
    end
  end
end