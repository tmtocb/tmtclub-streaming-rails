require 'rails_helper'

RSpec.describe Tab, type: :model do

  describe '#associations' do

    it { is_expected.to belong_to(:organisation) }

  end
end
