module TVDB
  class Bio

    attr_reader :person

    def initialize(person)
      @person = person
    end

    def to_s
      "#{person.name} was born in #{person.birthplace}"
    end

  end
end
