# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :snippet do
    code FactoryGirl.generate(:lorem)
    title
    language FactoryGirl.generate(:title)
    price 10
    user
  end
end
