require 'rails_helper'

RSpec.describe Organisation, type: :model do

  describe '#validations' do

    it 'should test that factory is valid' do
      expect(build :organisation).to be_valid
    end

    it 'should validate the presence of name' do
      organisation = build :organisation, name: ''
      expect(organisation).not_to be_valid
      expect(organisation.errors.messages[:name]).to include("can't be blank")
    end

    it 'should validate the presence of slug' do
      organisation = build :organisation, slug: ''
      expect(organisation).not_to be_valid
      expect(organisation.errors.messages[:slug]).to include("can't be blank")
    end

    it 'should validate the uniqueness of slug' do
      organisation = create :organisation
      invalid_organisation = build :organisation, slug: organisation.slug
      expect(invalid_organisation).not_to be_valid
    end
  end 
 end
