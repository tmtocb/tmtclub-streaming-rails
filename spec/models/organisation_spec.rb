require 'rails_helper'

RSpec.describe Organisation, type: :model do

  describe '#validations' do

    it 'should test that factory is valid' do
      expect(build :organisation).to be_valid
    end

    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:slug) }
    it { should validate_uniqueness_of(:slug) }
  end 


  describe '#associations' do

    it { is_expected.to have_many(:tabs) }

  end
 end
