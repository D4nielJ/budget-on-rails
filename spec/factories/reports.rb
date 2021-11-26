FactoryBot.define do
  factory :report do
    name { Faker::Fantasy::Tolkien.location }
    amount { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    author_id { Faker::Number.within(range: 1..10) }
  end
end
