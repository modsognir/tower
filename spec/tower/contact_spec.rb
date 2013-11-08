require 'tower'

module Tower
  describe Contact do
    let(:attributes) do
      {
        first_name: 'Correk',
        last_name: 'Maladan',
        emails: ['dev@jsf.io'],
        phones: ['07922 178 463']

      }
    end

    subject(:contact) { Contact.new(attributes) }

    it 'has a name' do
      expect(contact.name.to_s).to eql('Correk Maladan')
    end

    describe 'phones' do
      context 'with phone number array' do
        let(:attributes) { { phones: ['07888 999 000'] } }

        it 'has phone numbers' do
          expect(contact.phones.first.to_s).to eql('07888 999 000')
        end
      end

      context 'with one number' do
        let(:attributes) { { phones: '07888 999 000' } }

        it 'has phone numbers' do
          expect(contact.phones.first.to_s).to eql('07888 999 000')
        end
      end

      context 'with no numbers' do
        let(:attributes) { {} }

        it 'has phone numbers' do
          expect(contact.phones.first.to_s).to eql('')
        end
      end
    end

    describe 'emails' do
      context 'with email addresses array' do
        let(:attributes) { { emails: ['dev@jsf.io'] } }

        it 'has email addressess' do
          expect(contact.emails.first.to_s).to eql('dev@jsf.io')
        end
      end

      context 'with one addres' do
        let(:attributes) { { emails: 'dev@jsf.io' } }

        it 'has email addressess' do
          expect(contact.emails.first.to_s).to eql('dev@jsf.io')
        end
      end

      context 'with no addressess' do
        let(:attributes) { {} }

        it 'has no email addresses' do
          expect(contact.emails.first.to_s).to eql('')
        end
      end
    end
  end
end