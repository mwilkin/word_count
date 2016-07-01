class String
  define_method(:word_count) do |input_string|
    count = 0
    input_word = self.downcase()
    input_string_array = input_string.downcase().gsub(/[^a-z0-9\s]/i, "").split(" ")
    input_string_array.each do |word|
      if word == input_word
        count += 1
      end
    end
    return count
  end
end
