# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create( name: "Bar")
Category.create( name: "Pub")
Category.create( name: "Nargile Cafe")
Category.create( name: "Cafe")
Category.create( name: "Restoran")

Place.create( name: "Ottoman Nargile Atölyesi", address: "İzmir/Bornova", phone_number: "465465", contact_mail: "ottoman@gmail.com", established_at: "2016-08-12", description: "Nargileci", category_id: 3)
Place.create( name: "Lobby Bistro", address: "Manisa", phone_number: "123554312", contact_mail: "lobby@gmail.com", established_at: "2012-11-03", description: "Bistro",  category_id: 2)
Place.create( name: "Han Cafe", address: "Manisa", phone_number: "465546", contact_mail: "han@gmail.com", established_at: "2015-08-01", description: "Nargile'nin adresi",  category_id: 3)
Place.create( name: "Efendi Restoran", address: "Manisa/Merkez", phone_number: "45546645", contact_mail: "efendi@gmail.com", established_at: "2011-08-13", description: "Rakı rakı rakı",  category_id: 5)
Place.create( name: "City Park", address: "Bolu/Üniversite", phone_number: "465465", contact_mail: "city_park@gmail.com", established_at: "2016-01-01", description: "Ucuz yemek", category_id: 5)
Place.create( name: "Bıyık", address: "Manisa/Uncubozköy", phone_number: "465645", contact_mail: "biyik@gmail.com", established_at: "2014-03-19", description: "Shisha :D 2", category_id: 3)
Place.create( name: "City City", address: "World", phone_number: "465456", contact_mail: "city@gmail.com", established_at: "2000-01-03", description: "city world", category_id: 5)
Place.create( name: "Merthan Cafe", address: "Manisa", phone_number: "4556", contact_mail: "merthan@gmail.com", established_at: "1997-12-13", description: "Narigleci cafe", category_id: 4)
Place.create( name: "X-Garden", address: "İzmir", phone_number: "46513212", contact_mail: "xgarden@mynet.com", established_at: "2007-03-30", description: "Pub lounge", category_id: 2)
Place.create( name: "Ooze Venue", address: "İzmir/Bornova", phone_number: "2325412312", contact_mail: "ooze@gmail.com", established_at: "2009-09-17", description: "Live performance stage", category_id: 1)

Comment.create( body: "Ottoman nargile iyidir", place_id: 1)
Comment.create( body: "Ottoman'da nargile içilmeli", place_id: 1)
Comment.create( body: "Lobby'de bira içilirr agaa",  place_id: 2)
Comment.create( body: "Eskiden han çok iyiydide bozdu", place_id: 3)
Comment.create( body: "Efendi'de rakı çok iyi içilir", place_id: 4)
Comment.create( body: "Lahmacunu çok güzel", place_id: 5)
Comment.create( body: "Bıyık'ta nargile iyidir", place_id: 6)
Comment.create( body: "Laa laa laa", place_id: 7)
Comment.create( body: "Boş bir yer", place_id: 8)
Comment.create( body: "Şarabı iyidir.", place_id: 9)
Comment.create( body: "Burada konsere gidilir", place_id: 10)

puts "Seed created"
