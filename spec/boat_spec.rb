require './lib/boat'
require './lib/renter'

RSpec.describe Boat do
  let!(:kayak){Boat.new(:kayak, 20)}

  describe '#initialize' do
    it "exists" do
      expect(kayak).to be_a Boat
    end

    it "has attributes" do
      expect(kayak.type).to eq :kayak
      expect(kayak.price_per_hour).to eq 20
      expect(kayak.hours_rented).to eq 0
    end
  end
  describe '#add_hour' do
    it "adds hours to hours_rented" do
      kayak.add_hour
      kayak.add_hour
      kayak.add_hour
      expect(kayak.hours_rented).to eq 3
    end
  end
end

RSpec.describe Renter do
  let!(:renter){Renter.new("Patrick Star", "4242424242424242")}

  describe '#initialize' do
    it "exists" do
      expect(renter).to be_a Renter
    end
    it "has attributes" do
      expect(renter.name).to eq "Patrick Star"
      expect(renter.credit_card_number).to eq "4242424242424242"
    end
  end
end
