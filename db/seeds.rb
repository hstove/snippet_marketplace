# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create!({
  email: "admin@example.com",
  password: "password",
  password_confirmation: "password",
  is_admin: true,
})

user.snippets.create!({
  title: "FizzBuzz",
  code: %Q{
def fizz_buzz_1(max)
  arr = []
  (1..max).each do |n|
    if ((n % 3 == 0) && (n % 5 == 0))
      arr << "FizzBuzz"
    elsif (n % 3 == 0)
      arr << "Fizz"
    elsif (n % 5 == 0)
      arr << "Buzz"
    else
      arr << n
    end
  end
  return arr
end
  },
  language: "Ruby",
  price: 0.01
})
