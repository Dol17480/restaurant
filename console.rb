require_relative('models/meal')
require_relative('models/restaurant')

require( 'pry-byebug' )

pakho = Restaurant.new( {'name' => "The Pak Ho", 'address' => "Banbury Road", 'cuisine' => 'cuisine'} )
pakho.save()
shamrock = Restaurant.new( {'name' => "The Shamrock", 'address' => "O''Connell Street", 'cuisine' => 'traditional'} )
shamrock.save()

meal1 = Meal.new( {'name' => "King Prawn Chow Mein", 'restaurant_id' => pakho.id })
meal1.save()
meal2 = Meal.new( {'name' => "Pork Dumplings", 'restaurant_id' => pakho.id })
meal2.save()
meal3 = Meal.new( {'name' => "Shepherds Pie", 'restaurant_id' => shamrock.id })
meal3.save()
meal4 = Meal.new( {'name' => "Irish Stew", 'restaurant_id' => shamrock.id })
meal4.save()

binding.pry
nil