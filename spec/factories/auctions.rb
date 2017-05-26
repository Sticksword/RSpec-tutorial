FactoryGirl.define do
  factory :auction do
    title "Anything"
    description "Lorem ipsum"
    start_date { 2.days.ago }
    end_date { 2.days.from_now }

    trait :with_seller do
      after(:create) do |user|
        user.seller = create(:user, user: user)
      end
    end



  end
  # create_table "auctions", force: :cascade do |t|
  #   t.datetime "start_date"
  #   t.datetime "end_date"
  #   t.string   "title"
  #   t.text     "description"
  #   t.datetime "created_at",   null: false
  #   t.datetime "updated_at",   null: false
  #   t.integer  "buyer_id_id"
  #   t.integer  "seller_id_id"
  #   t.integer  "buyer_id"
  #   t.integer  "seller_id"
  # end
end
