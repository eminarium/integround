FactoryBot.define do
  factory(:category) do
    name { Faker::Lorem.words.join(" ") }
    description { Faker::Lorem.sentence }
  end
end