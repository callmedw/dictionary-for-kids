require 'word'
require 'definition'
require 'rspec'
require 'pry'

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


  describe('#add') do
    it('adds a word and all of its attributes to the words array') do
      test_word = Word.new({:term => 'apple', :id => 1})
      test_word.add
      expect(Word.all()).to(eq([test_word]))
    end
  end

  describe('.find') do
    it('finds a term based on an id number') do
      test_word = Word.new({:term => 'apple', :id=> 1})
      test_word.add
      test_word2 = Word.new({:term => 'apple', :id=> 2})
      test_word2.add
      expect(Word.find(test_word2.id())).to(eq(test_word2))
    end
  end

  describe('#words') do
    it('returns an empty array of words for the dictionary') do
      test_word = Word.new({:term => 'apple', :id=> 1})
      expect(test_word.words()).to(eq([]))
    end
  end

  describe('#add_definition') do
    it('adds a definition and all of its attributes to a term') do
      test_word = Word.new({:term => 'apple', :id => 1})
      test_definition = Definition.new({:define => 'a round, red fruit from an apple tree', :id => 1})
      test_word.add_definition(test_definition)
      expect(test_word.words()).to(eq([test_definition]))
    end
  end
end
