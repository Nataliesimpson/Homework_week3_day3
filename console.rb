require_relative('./models/store')
require_relative('./models/pet')
require_relative('./db/sql_runner')

require( 'pry-byebug' )

runner = SqlRunner.new( {dbname:'pet_stores', host:'localhost'} )

store1 = Store.new( {'name' => 'Porty Pets', 'address' => 'Porty High Street', 'stock_type' => 'dogs'}, runner )
store2 = Store.new( {'name' => 'City Pets', 'address' => 'City High Street', 'stock_type' => 'exotic'}, runner )
store1.save()
store2.save()

pet1 = Pet.new( {'name' => 'Mudgee', 'type' => 'lowrider', 'pet_id' => pet.id}, runner)
pet2 = Pet.new( {'name' => 'Perez', 'type' => 'parrot', 'pet_id' => pet.id}, runner)

pet1.save()
pet2.save()



# binding.pry
# nil