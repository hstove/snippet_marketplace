# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order do
    snippet_id 1
    user_id 1
    amount 1.5
    usd_amount 1.5
    coinbase_id "MyString"
    coinbase_code "MyString"
  end
end
