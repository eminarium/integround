FactoryBot.define do
  factory :product do
    title { "MyString" }
    price { 1.5 }
    description { "MyText" }
  end

  factory(:category) do
    name { Faker::Lorem.words.join(" ") }
    description { Faker::Lorem.sentence }
  end
end