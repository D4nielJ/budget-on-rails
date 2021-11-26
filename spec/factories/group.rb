FactoryBot.define do
  factory :group do
    name { Faker::Fantasy::Tolkien.location }
    icon { Faker::Internet.url }
    user_id { Faker::Number.within(range: 1..10) }
  end
end
