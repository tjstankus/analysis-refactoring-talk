RSpec.describe TVDB::Bio do
  let(:person) { double('person', name: 'John Doe', birthplace: 'Miami, FL') }
  subject(:bio) { TVDB::Bio.new(person) }

  describe 'to_s' do
    it "returns expected string" do
      expect(bio.to_s).to eq('John Doe was born in Miami, FL')
    end
  end
end
