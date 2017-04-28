class Word
  attr_reader(:term, :id, :definitions)

  @@words = []

  define_method(:initialize) do |attributes|
    @term = attributes.fetch(:term)
    @id = @@words.length + 1
    @definitions = []
  end

  define_singleton_method(:all) do
    @@words
  end

  define_method(:words) do
    @definitions
  end

  define_method(:add) do
    @@words.push(self)
  end

  define_singleton_method(:find) do |id_number|
    found_id = nil
    @@words.each() do |term|
      if term.id() == id_number
        found_id = term
      end
    end
    found_id
  end

  define_method(:add_definition) do |meaning|
    @definitions.push(meaning)
  end
end
