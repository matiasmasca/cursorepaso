# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Province.create!(name: "Corrientes")
Province.create!(name: "Chaco")
Province.create!(name: "Misiones")
Province.create!(name: "Formosa")


City.create!(name: "Corrientes", province_id: Province.find_by(name: "Corrientes").id)
City.create!(name: "Goya", province_id: 1)

User.create!(email: "admin@tallerrails.org", password: "clave12345", password_confirmation: "clave12345", user_type: "admin")
User.create!(email: "usuario@tallerrails.org", password: "clave12345", password_confirmation: "clave12345", user_type: "user")
