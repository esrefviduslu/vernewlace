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