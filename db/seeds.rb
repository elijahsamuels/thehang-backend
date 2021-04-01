# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(first_name: "John", last_name: "Doe", email: "johndoe@thehang.com", password: "123", city: "Denver")
User.create(first_name: "Jane", last_name: "Doe", email: "janedoe@thehang.com", password: "123", city: "San Francisco")
User.create(first_name: "Andy", last_name: "Doe", email: "andydoe@thehang.com", password: "123", city: "New York City")
User.create(first_name: "Mark", last_name: "Doe", email: "markdoe@thehang.com", password: "123", city: "Austin")
User.create(first_name: "Sara", last_name: "Doe", email: "saradoe@thehang.com", password: "123", city: "Miami")