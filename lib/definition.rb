class Definition
  attr_reader(:define, :id)

  @@definitions = []

  define_method(:initialize) do |attributes|
    @define = attributes.fetch(:define)
    @id = @@definitions.length + 1
  end

  define_singleton_method(:all) do
    @@definitions
  end

  define_method(:add) do
    @@definitions.push(self)
  end

  define_singleton_method(:find) do |id_number|
    found_id = nil
    @@definitions.each() do |definition|
      if definition.id == id_number
        found_id = definition
      end
    end
    found_id
  end
end
