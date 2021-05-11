require 'rails_helper'

RSpec.describe Stock, type: :model do
  describe "validations" do
    subject(:stock) { build(:stock) }

    it { is_expected.to validate_presence_of(:count) }
    it { is_expected.to validate_numericality_of(:count).is_greater_than_or_equal_to(0) }
  end
end
