require 'rails_helper'

RSpec.describe Discount, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:discount) }
    it { is_expected.to validate_presence_of(:discount_percentage) }

    it { is_expected.to validate_numericality_of(:discount_percentage).only_integer }
  end
end
