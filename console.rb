require_relative('./models/restaurant')
require_relative('./models/meal')

require( 'pry-byebug' )

pakho = Restaurant.new( {'name' => "The Pak Ho", 'address' => "Banbury Road", 'cuisine' => 'cuisine'} )
shamrock = Restaurant.new( {'name' => "The Shamrock", 'address' => "O'Connell Street", 'cuisine' => 'traditional'} )
oasis.save()

meal1 = Meal.new( {'name' => "King Prawn Chow Mein", 'restaurant_id' => pakho.id })
meal2 = Meal.new( {'name' => "Pork Dumplings", 'restaurant_id' => pakho.id })
meal3 = Meal.new( {'name' => "Shepherds Pie", 'restaurant_id' => shamrock.id })
meal4 = Meal.new( {'name' => "Irish Stew", 'restaurant_id' => shamrock.id })
album1.save()

binding.pry
nil