def get_most_common_letter(text)
  counter = Hash.new(0)
  text.chars.each do |char|
    counter[char] += 1 unless char == ' '
  end
  counter.to_a.sort_by { |_k, v| v }.reverse[0][0]
end

get_most_common_letter('the roof, the roof, the roof is on fire!')

# Intended output:
#
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"
