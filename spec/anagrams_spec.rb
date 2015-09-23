require('rspec')
require('anagrams')

describe('String#anagrams') do
  it("will verify if one word is an anagram") do
    expect(("listen").anagrams("silent")).to(eq(true))
  end
end
