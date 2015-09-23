require('rspec')
require('anagrams')

describe('String#anagrams') do
  it("will verify if the argument is an anagram to the one word object") do
    expect(("listen").anagrams("silent")).to(eq(true))
  end

  it("will kick back false if argument is not an anagram to the one word object") do
    expect(("listen").anagrams("cat")).to(eq(false))
  end

  it("will verify if an argument is an anagram when tested against multiple words") do
    expect(("listen cat dog").anagrams("silent")).to(eq(true))
  end
end
