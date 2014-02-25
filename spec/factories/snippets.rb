# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :snippet do
    code "MyText"
    title "MyString"
    price 1.5
  end
end
