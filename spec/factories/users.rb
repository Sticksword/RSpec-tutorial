FactoryGirl.define do
  factory :user do
    sequence :email do |counter|
      "person_#{counter}@example.com"
    end
    password "Lorem ipsum"
    created_at { 2.days.ago }
    updated_at { 1.days.ago }

  end
  # create_table "users", force: :cascade do |t|
  #   t.string   "email"
  #   t.string   "password"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  # end
end
