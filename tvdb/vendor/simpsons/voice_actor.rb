# Do not change. Consider this 3rd party library code that you cannot access.
module Simpsons
  class VoiceActor

    CHARACTER_VOICE_ACTORS = {
      'Homer Simpson' => ['Dan Castellaneta', 'Chicago, IL'],
      'Marge Simpson' => ['Julie Kavner', 'Los Angeles, CA'],
      'Bart Simpson' => ['Nancy Cartwright', 'Dayton, OH'],
      'Lisa Simpson' => ['Yeardley Smith', 'Paris, France'],
      'Maggie Simpson' => ['Nancy Cartwright', 'Dayton, OH']
    }

    def self.for_character(name)
      voice_actor = CHARACTER_VOICE_ACTORS[name]
      if voice_actor.nil?
        nil
      else
        new(voice_actor.first, voice_actor.last)
      end
    end

    attr_reader :name, :birthplace

    def initialize(name, birthplace)
      @name, @birthplace = name, birthplace
    end
  end
end

