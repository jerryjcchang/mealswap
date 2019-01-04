# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Company.find_or_create_by(name: "Flatiron School", floor: "8F")
Company.find_or_create_by(name: "DCG - District Communications Group", floor: "8F")
Company.find_or_create_by(name: "Global Blockchain Business Council", floor: "9F")
Company.find_or_create_by(name: "Center for a Secure Free Society", floor: "8F")
Company.find_or_create_by(name: "Consensys", floor: "9F")
Company.find_or_create_by(name: "Venture Labs Georgetown", floor: "8F")

# Meal.find_or_create_by(name: "Ramen", calories: 900, ingredients: "Broth Noodles, Soft-Boiled Egg, Negi, Nori", description: "Delicious. Who doesn’t like ramen?", prep_time: "1.5 hrs", chef_id: 2)
# Meal.find_or_create_by(name: "Hot BBQ Chicken", calories: 450, ingredients: "Chicken, BBQ", description: "Slow cooked chicken covered in a spicy and sweet BBQ sauce", prep_time: "3 hrs", chef_id: 2)
# Meal.find_or_create_by(name: "Braised Beef Polenta", calories: 800, ingredients: "Beef, Tomatos, Red Wine, Polenta, Butter, Herbs", description: "Beef braised in a red wine tomato sauce for 8 hours, served on a bed of rich and buttery polenta", prep_time: "8+ hrs", chef_id: 2)

User.find_or_create_by(username: 'username', password: 'password', first_name: 'first', last_name: 'last', experience: '5', company_id: 1, email: 'jerryjcchang@gmail.com' )
