require_relative('./models/store')
require_relative('./models/pet')
require_relative('./db/sql_runner')

require( 'pry-byebug' )

runner = SqlRunner.new( {dbname:'pet_stores', host:'localhost'} )

store1 = Store.new( {'name' => 'Porty Pets', 'address' => 'Porty High Street', 'stock_type' => 'dogs'}, runner )
store2 = Store.new( {'name' => 'City Pets', 'address' => 'City High Street', 'stock_type' => 'exotic'}, runner )
store3 = Store.new( {'name' => 'Beachside Pets', 'address' => 'Beachy High Street', 'stock_type' => 'cats'}, runner )
store4 = Store.new( {'name' => 'CodeClan Pets', 'address' => 'CodeClan High Street', 'stock_type' => 'reptiles'}, runner )
store1.save()
store2.save()
store3.save()
store4.save()

pet1 = Pet.new( {'name' => 'Mudgee', 'type' => 'lowrider', 'store_id' => store1.id}, runner)
pet2 = Pet.new( {'name' => 'Perez', 'type' => 'parrot', 'store_id' => store2.id}, runner)
pet3 = Pet.new( {'name' => 'Twinkle', 'type' => 'cat', 'store_id' => store2.id}, runner)
pet4 = Pet.new( {'name' => 'Larry', 'type' => 'lizard', 'store_id' => store2.id}, runner)

pet1.save()
pet2.save()
pet3.save()
pet4.save()


binding.pry
nil