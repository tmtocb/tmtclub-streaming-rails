require 'rails_helper'

RSpec.describe Organisation, type: :model do

  describe '#validations' do

    it 'should test that factory is valid' do
      expect(FactoryBot.build :organisation).to be_valid
    end

    it 'should validate the presence of name' do
      organisation = FactoryBot.build :organisation, name: ''
      expect(organisation).not_to be_valid
      expect(organisation.errors.messages[:name]).to include("can't be blank")
    end

    it 'should validate the presence of slug' do
      organisation = FactoryBot.build :organisation, slug: ''
      expect(organisation).not_to be_valid
      expect(organisation.errors.messages[:slug]).to include("can't be blank")
    end

    it 'should validate the uniqueness of slug' do
      organisation = FactoryBot.create :organisation
      invalid_organisation = FactoryBot.build :organisation, slug: organisation.slug
      expect(invalid_organisation).not_to be_valid
    end
  end  
end
