require('rspec')
require('word_count')

describe("String#word_count") do
  it("takes a target word and a word/phrase/sententce and searches the word/phrase/sententce for the target word and counts the number of occurances") do
    execpt(("peck").word_count("picked")).to(eq(0))
  end
  # it("takes a word and a word/phrase/sententce and searches the word/phrase/sententce for the word and counts the number of occurances") do
  #   execpt(("peck").word_count("picked a peck of peppers")).to(eq(1))
  # end
  # it("takes a word and a word/phrase/sententce and searches the word/phrase/sententce for the word and counts the number of occurances") do
  #   execpt(("peck").word_count("If Peter Piper picked a peck of pickled peppers, where's the peck of pickled peppers Peter Piper picked?")).to(eq(2))
  # end
end
