require 'rails_helper'

RSpec.describe Tab, type: :model do

  describe '#associations' do

    it { is_expected.to belong_to(:organisation) }

  end

  describe '#validations' do

    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:slug) }
  end 
end
