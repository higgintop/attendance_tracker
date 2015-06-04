require 'rails_helper'

RSpec.describe Student, type: :model do
  after(:each) do
    described_class.destroy_all
  end
  describe "validations" do
    it {should validate_presence_of(:name)}
    it {should validate_length_of(:name).is_at_least(2)}
  end
end
