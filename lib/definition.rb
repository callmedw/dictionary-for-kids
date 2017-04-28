require 'ruby-lint'

class Definition
  attr_reader(:define, :id)

  @@definitions = []

  define_method(:initialize) do |attributes|
    @define = attributes.fetch(:define)
    @id = @@definitions.length + 1
  end



end
