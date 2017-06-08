require 'rails_helper'

RSpec.describe User, :type => :model do
  subject { User.all }
  def new_user
    FactoryGirl.create(:user)
  end

  describe "testing methods" do
    let(:u1) { new_user }
    let(:u2) { new_user }

    it 'eq' do
      u1
      u2
      is_expected.to eq([u1, u2])
    end

    it 'match_array' do
      binding.pry
      4 + 5
      test_str = $stdin.read
      u1
      u2
      test_str_2 = $stdin.read
      is_expected.to match_array([u1, u2])
    end
  end
end
