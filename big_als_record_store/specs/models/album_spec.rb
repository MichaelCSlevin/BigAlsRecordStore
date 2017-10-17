require('minitest/autorun')
require_relative('../../models/album')

class TestAlbum < MiniTest::Test

 def setup
   @album_hash = {
     "id" => 1,
     "artist_id" => 1,
     "title" => "Iowa",
     "quantity" => 5,
     "medium" => "CD",
     "genre" => "metal"
   }

   @iowa = Album.new(@album_hash)
 end

 def test_initialize
   assert_equal(1, @iowa.id)
   assert_equal(1, @iowa.artist_id)
   assert_equal("Iowa", @iowa.title)
   assert_equal(5, @iowa.quantity)
   assert_equal("CD", @iowa.medium)
   assert_equal("metal", @iowa.genre)

 end


end
