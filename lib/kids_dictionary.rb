require 'ruby-lint'

class Word
  attr_reader(:term, :id)

  @@words = []

  define_method(:initialize) do |attributes|
    @term = attributes.fetch(:term)
    @id = @@words.length + 1
  end

  define_singleton_method(:all) do
    @@words
  end

end
