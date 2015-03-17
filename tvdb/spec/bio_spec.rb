require_relative '../lib/bio'
require_relative '../vendor/simpsons/voice_actor'

RSpec.describe TVDB::Bio do

  describe '#to_s' do
    let(:person) { double('person', name: 'John Doe', birthplace: 'Miami, FL') }
    subject(:bio) { TVDB::Bio.new(person) }

    it "returns expected string" do
      expect(bio.to_s).to eq('John Doe was born in Miami, FL')
    end
  end

  describe 'via simpsons gem data', integration: true do
    let(:actor) { Simpsons::VoiceActor.for_character('Homer Simpson') }
    subject(:bio) { TVDB::Bio.new(actor) }

    describe '#to_s' do
      it 'returns expected string' do
        expect(bio.to_s).to eq('Dan Castellaneta was born in Chicago, IL')
      end

      describe 'given no result for character' do
        let(:actor) {
          Simpsons::VoiceActor.for_character('Homer Simpsn') ||
            TVDB::UnknownPerson.new
        }
        subject(:bio) { TVDB::Bio.new(actor) }

        it 'returns expected string' do
          expect(bio.to_s).to eq('[Unknown] was born in [unknown]')
        end
      end
    end
  end
end
