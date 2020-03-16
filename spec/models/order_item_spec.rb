require 'rails_helper'

RSpec.describe OrderItem, type: :model do
  describe "validations" do

    it { is_expected.to validate_presence_of(:quantity) }
    it { is_expected.to validate_numericality_of(:quantity).is_greater_than(0) }
  end

  describe "associations" do

    it { is_expected.to belong_to(:product) }
    it { is_expected.to belong_to(:order) }
  end
end
