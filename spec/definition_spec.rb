require 'word'
require 'definition'
require 'rspec'
require 'pry'

describe(Definition) do

  describe('#define') do
    it('returns the definition of a term') do
      test_definition = Definition.new({:define => 'a round, red fruit from an apple tree', :id => 1})
      expect(test_definition.define()).to(eq('a round, red fruit from an apple tree'))
    end
  end

  describe('#id') do
    it('returns the ID of a definition') do
      test_definition = Definition.new({:define => 'a round, red fruit from an apple tree', :id => 1})
      expect(test_definition.id()).to(eq(1))
    end
  end

  describe('.all') do
    it('returns an empty array') do
      test_definition = Definition.new({:define => 'a round, red fruit from an apple tree', :id => 1})
      expect(Definition.all()).to(eq([]))
    end
  end

  describe('#add') do
    it('adds a definition and all of its attributes to the definitions array') do
      test_definition = Definition.new({:define => 'a round, red fruit from an apple tree', :id => 1})
      test_definition.add
      expect(Definition.all()).to(eq([test_definition]))
    end
  end

  describe('.find') do
    it('finds a definition based on an id number') do
      test_definition = Definition.new({:define => 'a round, red fruit from an apple tree', :id => 1})
      test_definition.add
      test_definition2 = Definition.new({:define => 'a round, red fruit from an apple tree', :id => 1})
      test_definition2.add
      expect(Definition.find(test_definition2.id())).to(eq(test_definition2))
    end
  end



end
