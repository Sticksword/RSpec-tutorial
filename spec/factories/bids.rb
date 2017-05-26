FactoryGirl.define do
  factory :bid do
    email "Anything"
    password "Lorem ipsum"
    amount 10
    created_at { 2.days.ago }
    updated_at { 1.days.ago }

    association :bidder, factory: :user

  end
  # create_table "bids", force: :cascade do |t|
  #   t.integer  "bidder_id"
  #   t.integer  "auction_id"
  #   t.integer  "amount"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  # end
end
