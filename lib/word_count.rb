class String
  define_method(:word_count) do |input_word, input_string|
     input_string.split("")

     frequencies = Hash.new(0)
     input_string.each{|input_word| frequency[input_sting.downcase] +=1}
     return frequency
end