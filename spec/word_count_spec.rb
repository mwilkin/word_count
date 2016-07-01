require('rspec')
require('word_count')

describe("String#word_count") do
  it("takes a target word and a word/phrase/sentence and searches the word/phrase/sentence for the target word and counts the number of occurances") do
    expect(("peck").word_count("peck")).to(eq(1))
  end
  it("takes a word and a word/phrase/sententce and searches the word/phrase/sententce for the word and counts the number of occurances") do
    expect(("peck").word_count("picked a pot of peppers")).to(eq(0))
  end
  it("takes a word and a word/phrase/sententce and searches the word/phrase/sententce for the word and counts the number of occurances") do
    expect(("peck").word_count("If Peter Piper picked a peck of pickled peppers, where's the peck of pickled peppers Peter Piper picked?")).to(eq(2))
  end
  it("takes a word and a word/phrase/sententce and searches the word/phrase/sententce for the word and counts the number of occurances") do
    expect(("peck").word_count("If Peter Piper picked a peck of pickled peppers peck, where's the peck of pickled peppers Peter Piper picked?")).to(eq(3))
  end
end
