require 'kids_dictionary'
require 'rspec'
require 'pry'
require 'ruby-lint'


describe(Word) do

  describe('#term') do
    it('returns the term') do
      test_word = Word.new({:term => 'apple', :id => 1})
      expect(test_word.term()).to(eq('apple'))
    end
  end

describe('#id') do
   it('returns the ID of the term') do
     test_word = Word.new({:term => 'apple', :id => 1})
     expect(test_word.id()).to(eq(1))
   end
 end

 describe('.all') do
     it('returns an empty array') do
       test_word = Word.new({:term => 'apple', :id => 1})
       expect(Word.all()).to(eq([]))
     end
   end


end
