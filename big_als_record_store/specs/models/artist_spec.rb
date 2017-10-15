require('minitest/autorun')
require_relative('../../models/artist')

class TestArtist < MiniTest::Test

 def setup
   @artist_hash = {
     "id" => 1,
     "name" => "Slipknot"
   }
 end

 def test_initialize
   slipknot = Artist.new(@artist_hash)
   assert_equal(1, slipknot.id)
   assert_equal("Slipknot", slipknot.name)
 end

end
