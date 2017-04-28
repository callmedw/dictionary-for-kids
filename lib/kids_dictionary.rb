require 'ruby-lint'

class Word
  attr_reader(:term, :id)

  @@words = []

  define_method(:initialize) do |attributes|
    @term = attributes.fetch(:term)
    @id = @@words.length + 1

  end


end
