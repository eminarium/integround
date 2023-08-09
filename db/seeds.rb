# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'


5.times do
  Category.create(
    name: Faker::Commerce.department(max: 2, fixed_amount: true),
    description: Faker::Food.description
  )
end

100.times do
  Product.create(
    name: Faker::Commerce.product_name,
    price: Faker::Commerce.price,
    description: Faker::Food.description,
    category_id: Category.all.sample.id
  )
end

