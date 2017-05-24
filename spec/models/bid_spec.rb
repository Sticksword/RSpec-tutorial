require 'rails_helper'

RSpec.describe Bid, :type => :model do
  let(:bidder) { User.new(:email => "jane@doe.com", :password => "pw1234") }
  subject {
    described_class.new(bidder: bidder)
  }
  
  describe "Associations" do
    it "belongs to a bidder" do
      assc = described_class.reflect_on_association(:bidder)
      expect(assc.macro).to eq :belongs_to
    end

    it "belongs to an auction" do
      assc = Auction.reflect_on_association(:bids)
      expect(assc.macro).to eq :has_many
    end
  end

  describe "Validations" do
    it "should have a bidder" do
      expect(subject).to be_valid
    end
  end
end
