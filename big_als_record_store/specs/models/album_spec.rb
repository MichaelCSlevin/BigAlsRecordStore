require('minitest/autorun')
require_relative('../../models/album')

class TestAlbum < MiniTest::Test

 def setup
   @album_hash = {
     "id" => 1,
     "artist_id" => 1,
     "title" => "Iowa",
     "quantity" => 5,
     "medium" => "CD"
   }

   @iowa = Album.new(@album_hash)
 end

 def test_initialize
   assert_equal(1, @iowa.id)
   assert_equal(1, @iowa.artist_id)
   assert_equal("Iowa", @iowa.title)
   assert_equal(5, @iowa.quantity)
   assert_equal("CD", @iowa.medium)

 end

 def test_stock
   assert_equal('Medium Stock', @iowa.inventory)

   #  someone buys two albums.
   @album_hash["quantity"] = 3
   @iowa = Album.new(@album_hash)
   assert_equal('Low Stock', @iowa.inventory)

   #Big Al reorders way too much
   @album_hash["quantity"] = 666
   @iowa = Album.new(@album_hash)
   assert_equal('High Stock', @iowa.inventory)
 end

end
