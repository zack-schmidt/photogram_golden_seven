# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# AdminUser.create(email: "admin@example.com", password: "password", password_confirmation: "password")

photo_info = [
  {
    :source => "https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Tracy_Caldwell_Dyson_in_Cupola_ISS.jpg/640px-Tracy_Caldwell_Dyson_in_Cupola_ISS.jpg",
    :caption => "Astronaut"
  },
  {
    :source => "https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Polarlicht_2.jpg/640px-Polarlicht_2.jpg",
    :caption => "Aurora"
  },
  {
    :source => "https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/Pair_of_Merops_apiaster_feeding.jpg/640px-Pair_of_Merops_apiaster_feeding.jpg",
    :caption => "Birds"
  },
  {
    :source => "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Mostar_Old_Town_Panorama_2007.jpg/640px-Mostar_Old_Town_Panorama_2007.jpg",
    :caption => "Bridge"
  },
  {
    :source => "https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/Fire_breathing_2_Luc_Viatour.jpg/640px-Fire_breathing_2_Luc_Viatour.jpg",
    :caption => "Firebreather"
  },
  {
    :source => "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Biandintz_eta_zaldiak_-_modified2.jpg/640px-Biandintz_eta_zaldiak_-_modified2.jpg",
    :caption => "Horses"
  },
  {
    :source => "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e9/Lake_Bondhus_Norway_2862.jpg/640px-Lake_Bondhus_Norway_2862.jpg",
    :caption => "Lake"
  },
  {
    :source => "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Gl%C3%BChwendel_brennt_durch.jpg/511px-Gl%C3%BChwendel_brennt_durch.jpg",
    :caption => "Lightbulb"
  },
  {
    :source => "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1d/Penguin_in_Antarctica_jumping_out_of_the_water.jpg/640px-Penguin_in_Antarctica_jumping_out_of_the_water.jpg",
    :caption => "Penguins"
  },
  {
    :source => "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Pluto-01_Stern_03_Pluto_Color_TXT.jpg/768px-Pluto-01_Stern_03_Pluto_Color_TXT.jpg",
    :caption => "Pluto"
  },
  {
    :source => "https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/Eichh%C3%B6rnchen_D%C3%BCsseldorf_Hofgarten_edit.jpg/640px-Eichh%C3%B6rnchen_D%C3%BCsseldorf_Hofgarten_edit.jpg",
    :caption => "Squirel"
  },
  {
    :source => "https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Nasir-al_molk_-1.jpg/620px-Nasir-al_molk_-1.jpg",
    :caption => "Stained glass"
  },
  {
    :source => "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/Magnificent_CME_Erupts_on_the_Sun_-_August_31.jpg/640px-Magnificent_CME_Erupts_on_the_Sun_-_August_31.jpg",
    :caption => "Sun"
  },
  {
    :source => "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/Laser_Towards_Milky_Ways_Centre.jpg/661px-Laser_Towards_Milky_Ways_Centre.jpg",
    :caption => "Telescope"
  },
  {
    :source => "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Broadway_tower_edit.jpg/640px-Broadway_tower_edit.jpg",
    :caption => "Tower"
  },
  {
    :source => "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/A_butterfly_feeding_on_the_tears_of_a_turtle_in_Ecuador.jpg/640px-A_butterfly_feeding_on_the_tears_of_a_turtle_in_Ecuador.jpg",
    :caption => "Turtles"
  }
]

photo_info.each do |photo_hash|
  new_photo = Photo.new

  new_photo.source = photo_hash[:source]
  new_photo.caption = photo_hash[:caption]

  new_photo.save
end

puts "There are now #{Photo.count} photos in the database."
