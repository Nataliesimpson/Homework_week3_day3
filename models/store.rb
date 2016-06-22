require( 'pg' )
require( 'pry-byebug' )

class Store

  attr_reader(:name, :address, :stock_type, :id)

  def initialize(options, runner)
    @name = options['name']
    @address = options['address']
    @stock_type = options['stock_type']
    @id = options['id'].to_i
    @runner = runner
  end

  def save()
    sql = "INSERT INTO pets (name, address, stock_type) VALUES ('#{@name}', '#{address}', #{stock_type}) RETURNING *"
    store_data = @runner.run(sql)
    @id = store_data.first['id'].to_i
  end  

  def pets()
    sql = "SELECT * FROM pets WHERE store_id = #{@id} "
    pets_data = @runner.run(sql)
    pets_array = pets_data.map { |pet_data| Pet.new(pet_data, @runner) }
    return pets_array
  end  

end  