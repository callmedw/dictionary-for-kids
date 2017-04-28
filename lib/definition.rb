require 'ruby-lint'

class Definition
  attr_reader(:define)

  define_method(:initialize) do |attributes|
    @define = attributes.fetch(:define)
  end


end
