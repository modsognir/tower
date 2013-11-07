require 'tower'

module Tower
  describe Contact do
    subject(:contact) do
      Contact.new(first_name: 'Correk', last_name: 'Maladan')
    end

    it 'has a name' do
      expect(contact.name).to eql('Correk Maladan')
    end
  end
end