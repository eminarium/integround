# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


clothes = Category.create(name: "Clothes", description: "Everything about clothes...")
pc = Category.create(name: "PC & Accessories", description: "Everything about PC & Accessories...")
groceries = Category.create(name: "Groceries", description: "Everything about Groceries...")

Product.create(name: "Jeans", price: 23.55, description: "This is jeans", category_id: clothes.id)
Product.create(name: "T-Shirt", price: 23.55, description: "This is T-Shirt", category_id: clothes.id)
Product.create(name: "Socks", price: 23.55, description: "This is Socks", category_id: clothes.id)

Product.create(name: "Laptop MSI GF-63", price: 23.55, description: "This is Laptop MSI GF-63", category_id: pc.id)
Product.create(name: "Ipad Air Mini", price: 23.55, description: "This is Ipad Air Mini", category_id: pc.id)
Product.create(name: "Samsung S-21", price: 23.55, description: "This is Samsung S-21", category_id: pc.id)

Product.create(name: "Tomatoes", price: 23.55, description: "This is Tomatoes", category_id: groceries.id)
Product.create(name: "Tea-Lipton", price: 23.55, description: "This is Tea", category_id: groceries.id)
Product.create(name: "Coffee Arabica", price: 23.55, description: "This is Coffee", category_id: groceries.id)

