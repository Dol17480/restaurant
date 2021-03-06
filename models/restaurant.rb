require_relative( '../db/sql_runner' )

class Restaurant

  attr_reader :id, :name, :address, :cuisine

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
    @address = options['address']
    @cuisine = options['cuisine']

  end

  def save
    sql = "INSERT INTO restaurants (name, address, cuisine) VALUES ('#{@name}','#{@address}', '#{@cuisine}') RETURNING *";
    restaurant = SQLRunner.run(sql).first
    @id = restaurant['id']
  end

  def meals
  sql = "SELECT * FROM meals WHERE restaurant_id = #{@id}"
    meals = SQLRunner.run( sql )
    result =  meals.map {|meal| Meal.new(meal) }
   return result
  end

end