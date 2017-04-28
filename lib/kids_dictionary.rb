require 'ruby-lint'

class Word
  attr_reader(:term)

  define_method(:initialize) do |attributes|
    @term = attributes.fetch(:term)

  end
end
