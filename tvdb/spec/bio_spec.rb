RSpec.describe TVDB::Bio do
  let(:person) { double('person', name: 'John Doe', birthplace: 'Miami, FL') }
  subject(:bio) { TVDB::Bio.new(person) }

  describe 'to_s' do
    it "includes person's name" do
      expect(bio.to_s).to include('John Doe')
    end

    it "includes person's birthplace"

    it "returns expected string"
  end
end
