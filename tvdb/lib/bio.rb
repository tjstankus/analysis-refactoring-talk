module TVDB
  class Bio

    attr_reader :person

    def initialize(person)
      @person = person
    end

    def to_s
      if person.nil?
        "[Unknown] was born in [unknown]"
      else
        "#{person.name} was born in #{person.birthplace}"
      end
    end

  end
end
