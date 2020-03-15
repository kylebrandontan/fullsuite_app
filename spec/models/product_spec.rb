require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "validations" do
    subject(:product) { build(:product) }

    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:sku) }
    it { is_expected.to validate_numericality_of(:price).is_greater_than_or_equal_to(0) }
    it { is_expected.to validate_numericality_of(:cost_of_goods).is_greater_than_or_equal_to(0) }
  end
end
