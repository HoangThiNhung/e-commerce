# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Create sample account admin"
User.create email: "admin@e-commerce.com", password: "admin123456",
  password_confirmation: "admin123456", admin: true, name: "Admin"

puts "Create sample category"
Category.create name: "Women", left_node: 1, right_node: 9, depth: 1
Category.create name: "Top", left_node: 2, right_node: 4, depth: 2
Category.create name: "Dress", left_node: 5, right_node: 8, depth: 2
Category.create name: "Skirt", left_node: 6, right_node: 7, depth: 3

Category.create name: "Man", left_node: 10, right_node: 13, depth: 1
Category.create name: "Jean", left_node: 11, right_node: 12, depth: 2
