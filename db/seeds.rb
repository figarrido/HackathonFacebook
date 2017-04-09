# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.new({name:'Felipe', nickname:'figarrido', mail:'figarrido@uc.cl', password:'12345'}).save
User.new({name:'Martin', nickname:'menavarrete', mail:'menavarrete@uc.cl', password:'1212'}).save
User.new({name:'Ruz', nickname:'daruz', mail:'daruz@uc.cl', password:'1313'}).save
