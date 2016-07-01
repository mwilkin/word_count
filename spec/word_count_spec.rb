require('rspec')
require('word_count')

describe("String#word_count") do
  it("takes a word and a string and searches the string for the word and counts the number of occurances") do
    execpt(("peck")).word_count("If Peter Piper picked a peck of pickled peppers, where's the peck of pickled peppers Peter Piper picked?")).to(eq(2))
  end
end
