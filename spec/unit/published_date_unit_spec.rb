# location: spec/unit/published_date_unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
    subject do
      described_class.new(title: 'harry potter', author: 'J.K Rowling', published_date: '2007-07-21')
    end
    
    it 'is valid with valid published date' do
      expect(subject).to be_valid
    end
  
    it 'is not valid without a published date' do
      subject.published_date = nil
      expect(subject).not_to be_valid
    end
  end