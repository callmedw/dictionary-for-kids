require 'word'
require 'definition'
require 'rspec'
require 'pry'
require 'ruby-lint'


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



end
