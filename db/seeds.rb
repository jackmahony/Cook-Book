# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Recipe.create!(name: "Pasta Salad", category: "Side Dish", cooktime: 30, serving: 6, healthrating: 3, difficulty: 2, user_id: 1, description: "A light and refreshing pasta salad that is perfect for a summer picnic.")
Recipe.create!(name: "Grilled Salmon", category: "Main Course", cooktime: 20, serving: 4, healthrating: 4, difficulty: 2, user_id: 2, description: "A healthy and flavorful grilled salmon dish that is perfect for a weeknight meal.")
Recipe.create!(name: "Roasted Chicken", category: "Main Course", cooktime: 1 , serving: 4, healthrating: 3, difficulty: 2, user_id: 3, description: "A classic roasted chicken dish that is perfect for a Sunday dinner.")
Recipe.create!(name: "Lasagna", category: "Main Course", cooktime: 1 , serving: 6, healthrating: 2, difficulty: 3, user_id: 1, description: "A hearty and delicious lasagna dish that is perfect for a cold winter night.")
Recipe.create!(name: "Pizza", category: "Main Course", cooktime: 30 , serving: 4, healthrating: 2, difficulty: 2, user_id: 2, description: "A customizable and delicious pizza dish that is perfect for a casual meal.")
Recipe.create!(name: "Tacos", category: "Main Course", cooktime: 30 , serving: 4, healthrating: 2, difficulty: 2, user_id: 3, description: "A versatile and flavorful taco dish that is perfect for a fun and casual meal.")
Recipe.create!(name: "Banana Bread", category: "Dessert", cooktime: 1 , serving: 12, healthrating: 3, difficulty: 2, user_id: 1, description: "A moist and delicious banana bread that is perfect for a weekend brunch.")
Recipe.create!(name: "Chocolate Chip Cookies", category: "Dessert", cooktime: 30 , serving: 12, healthrating: 1, difficulty: 2, user_id: 2, description: "A classic chocolate chip cookie recipe that is perfect for a sweet treat.")
Recipe.create!(name: "Macarons", category: "Dessert", cooktime: 1 , serving: 12, healthrating: 1, difficulty: 4, user_id: 3, description: "A delicate and delicious macarons recipe that is perfect for a special occasion.")
Recipe.create!(name: "Peanut Butter Cookies", category: "Dessert", cooktime: 30 , serving: 12, healthrating: 1, difficulty: 2, user_id: 1, description: "A chewy and delicious peanut butter cookie recipe that is perfect for a snack or dessert.")
Recipe.create!(name: "Red Velvet Cake", category: "Dessert", cooktime: 1 , serving: 12, healthrating: 1, difficulty: 3, user_id: 2, description: "A rich and decadent red velvet cake that is perfect for a special occasion.")
Recipe.create!(name: "Avocado Toast", category: "Breakfast", cooktime: 10 , serving: 1, healthrating: 4, difficulty: 1, user_id: 3, description: "A simple and delicious avocado toast that is perfect for a quick and easy breakfast.")
Recipe.create!(name: "Buddha Bowl", category: "Lunch", cooktime: 30 , serving: 1, healthrating: 4, difficulty: 2, user_id: 1, description: "A healthy and flavorful Buddha bowl that is perfect for a light lunch.")
Recipe.create!(name: "Caprese Salad", category: "Salad", cooktime: 10 , serving: 1, healthrating: 4, difficulty: 1, user_id: 2, description: "A simple and delicious Caprese salad that is perfect for a light lunch or dinner.")
