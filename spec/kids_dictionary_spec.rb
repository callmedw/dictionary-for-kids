require 'kids_dictionary'
require 'rspec'
require 'pry'
require 'ruby-lint'


describe(Word) do

  describe('#term') do
    it('returns the term') do
      test_word = Word.new({:term => 'apple'})
      expect(test_word.term()).to(eq('apple'))
    end
  end
end
