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

Game.new({user_id: 1, name: 'The last of us',
  description:"http://ps3media.ign.com/ps3/image/object/123/123980/lastofusps31.jpg",
  platform: 2, category: 3}).save

Game.new({user_id: 1, name: 'Metar Gear Solid 5',
  description:"http://assets1.ignimgs.com/2014/03/18/metal-gear-solid-v-ground-zeroes-us-esrb-ps4jpg-e31ae1.jpg",
  platform: 2, category: 3}).save

Game.new({user_id: 1, name: 'Plant v/s Zombies',
  description:"http://frugalgaming.co.uk/wp-content/uploads/2014/08/pvzps4.jpg",
  platform: 2, category: 3}).save

Game.new({user_id: 1, name: 'Just Dance 20141',
  description:"http://images.pushsquare.com/games/ps4/just_dance_2014/cover_large.jpg",
  platform: 2, category: 3}).save

Game.new({user_id: 1, name: 'FIFA 17',
  description:"http://www.3djuegos.com/juegos/13128/fifa_17/fotos/ficha/fifa_17-3451939.jpg",
  platform: 2, category: 3}).save


Game.new({user_id: 1, name: 'God of War Remastered',
  description:"http://media.vandal.net/m/30112/god-of-war-iii-remasterizado-2015731270_1.jpg",
  platform: 2, category: 3}).save

Game.new({user_id: 2, name: 'The last of us',
  description:"http://ps3media.ign.com/ps3/image/object/123/123980/lastofusps31.jpg",
  platform: 2, category: 3}).save

Game.new({user_id: 2, name: 'Metar Gear Solid 5',
  description:"http://assets1.ignimgs.com/2014/03/18/metal-gear-solid-v-ground-zeroes-us-esrb-ps4jpg-e31ae1.jpg",
  platform: 2, category: 3}).save

Game.new({user_id: 2, name: 'Plant v/s Zombies',
  description:"http://frugalgaming.co.uk/wp-content/uploads/2014/08/pvzps4.jpg",
  platform: 2, category: 3}).save

Game.new({user_id: 3, name: 'Just Dance 20141',
  description:"http://images.pushsquare.com/games/ps4/just_dance_2014/cover_large.jpg",
  platform: 2, category: 3}).save

Game.new({user_id: 3, name: 'FIFA 17',
  description:"http://www.3djuegos.com/juegos/13128/fifa_17/fotos/ficha/fifa_17-3451939.jpg",
  platform: 2, category: 3}).save

Game.new({user_id: 3, name: "Assassin's Creed Unity",
  description:"http://www.3djuegos.com/juegos/10832/assassin__039_s_creed_unity/fotos/ficha/assassin__039_s_creed_unity-2548844.jpg",
  platform: 2, category: 3}).save

Game.new({user_id: 3, name: 'God of War Remastered',
  description:"http://media.vandal.net/m/30112/god-of-war-iii-remasterizado-2015731270_1.jpg",
  platform: 2, category: 3}).save
