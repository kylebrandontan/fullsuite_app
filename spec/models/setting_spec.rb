require 'rails_helper'

RSpec.describe Setting, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:vat) }
    it { is_expected.to validate_presence_of(:vat_percentage) }
    it { is_expected.to validate_presence_of(:service_charge) }
    it { is_expected.to validate_presence_of(:service_charge_percentage) }

    it { is_expected.to validate_numericality_of(:vat_percentage).only_integer }
    it { is_expected.to validate_numericality_of(:service_charge_percentage).only_integer }
  end
end
