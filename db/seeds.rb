# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ow1 = Owner.create( email: "owner@gmail.com", password: "123456")
ow2 = Owner.create( email: "owner2@gmail.com", password: "123456")

c1 = Customer.create( email: "esref@gmail.com", password: "123456")
c2 = Customer.create( email: "esref2@gmail.com", password: "123456")

Category.create( name: "Bar")
Category.create( name: "Pub")
Category.create( name: "Nargile Cafe")
Category.create( name: "Cafe")
Category.create( name: "Restoran")

Place.create( name: "Ottoman Nargile Atölyesi", address: "İzmir/Bornova", phone_number: "465465", contact_mail: "ottoman@gmail.com", established_at: "2016-08-12", description: "Nargileci", category_id: 3, owner: ow2)
Place.create( name: "Lobby Bistro", address: "Manisa", phone_number: "123554312", contact_mail: "lobby@gmail.com", established_at: "2012-11-03", description: "Bistro",  category_id: 2, owner: ow1)
Place.create( name: "Han Cafe", address: "Manisa", phone_number: "465546", contact_mail: "han@gmail.com", established_at: "2015-08-01", description: "Nargile'nin adresi",  category_id: 3, owner: ow2)
Place.create( name: "Efendi Restoran", address: "Manisa/Merkez", phone_number: "45546645", contact_mail: "efendi@gmail.com", established_at: "2011-08-13", description: "Rakı rakı rakı",  category_id: 5, owner: ow1)
Place.create( name: "City Park", address: "Bolu/Üniversite", phone_number: "465465", contact_mail: "city_park@gmail.com", established_at: "2016-01-01", description: "Ucuz yemek", category_id: 5, owner: ow2)
Place.create( name: "Bıyık", address: "Manisa/Uncubozköy", phone_number: "465645", contact_mail: "biyik@gmail.com", established_at: "2014-03-19", description: "Shisha :D 2", category_id: 3, owner: ow1)
Place.create( name: "City City", address: "World", phone_number: "465456", contact_mail: "city@gmail.com", established_at: "2000-01-03", description: "city world", category_id: 5, owner: ow2)
Place.create( name: "Merthan Cafe", address: "Manisa", phone_number: "4556", contact_mail: "merthan@gmail.com", established_at: "1997-12-13", description: "Narigleci cafe", category_id: 4, owner: ow1)
Place.create( name: "X-Garden", address: "İzmir", phone_number: "46513212", contact_mail: "xgarden@mynet.com", established_at: "2007-03-30", description: "Pub lounge", category_id: 2, owner: ow2)
Place.create( name: "Ooze Venue", address: "İzmir/Bornova", phone_number: "2325412312", contact_mail: "ooze@gmail.com", established_at: "2009-09-17", description: "Live performance stage", category_id: 1, owner: ow1)


puts "Seed created"
