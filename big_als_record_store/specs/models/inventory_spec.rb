require('minitest/autorun')
require_relative('../../models/inventory')

class TestInventory < MiniTest::Test

  def setup
    inventory_hash = {
      "album_title" => "Iowa",
      "artist_name" => "Slipknot",
      "genre" => "Metal",
      "quantity" => 5,
      "medium" => "CD",
      "artist_id" => 1,
      "album_id" => 1
    }
    @inventory = Inventory.new(inventory_hash)

  end

  def test_initialize
    assert_equal("Iowa", @inventory.album_title)
    assert_equal("Slipknot", @inventory.artist_name)
    assert_equal("Metal", @inventory.genre)
    assert_equal(5, @inventory.quantity)
    assert_equal("CD", @inventory.medium)
    assert_equal(1, @inventory.artist_id)
    assert_equal(1, @inventory.album_id)
  end

  def test_stock_medium
    assert_equal('Medium Stock', @inventory.stock)
  end

  #  someone buys two albums.
  def test_stock__low
    @inventory.quantity = 3
    assert_equal('Low Stock', @inventory.stock)
  end

  #Big Al reorders way too much
  def test_stock__high
    @inventory.quantity = 666
    assert_equal('High Stock', @inventory.stock)
  end

end
