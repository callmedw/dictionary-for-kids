require 'word'
require 'definition'
require 'rspec'
require 'pry'
require 'ruby-lint'


describe(Definition) do

  describe('#define') do
    it('returns the definition of a term') do
      test_definition = Definition.new({:define => 'a round, red fruit from an apple tree'})
      expect(test_definition.define()).to(eq('a round, red fruit from an apple tree'))
    end
  end



end
