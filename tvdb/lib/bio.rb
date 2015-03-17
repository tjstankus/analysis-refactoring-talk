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

  class UnknownPerson
    def name
      "[Unknown]"
    end

    def birthplace
      "[unknown]"
    end
  end
end
