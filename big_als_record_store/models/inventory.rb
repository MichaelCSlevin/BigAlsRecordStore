class Inventory

attr_reader :album_title, :artist_name, :quantity, :medium, :artist_id, :album_id

  def initialize(inventory_hash)
    @album_title = inventory_hash['album_title']
    @artist_name = inventory_hash['artist_name']
    @quantity = inventory_hash['quantity']
    @medium = inventory_hash['format']
    @artist_id = inventory_hash['artist_id']
    @album_id = inventory_hash['album_id']
  end

  def self.all()
    sql = '
    SELECT
    albums.title "album_title",
    artists.name "artist_name",
    albums.quantity "quantity",
    albums.medium "format",
    artists.id "artist_id",
    albums.id "album_id"
    from albums
    INNER JOIN artists on albums.artist_id = artists.id'
    values = []
    inventory = SqlRunner.run(sql, "show_inventory", values)
    return inventory.map { |inventory| Inventory.new(inventory)}
  end

  def stock()
    case @quantity
    when 0..4
      return 'Low Stock'
    when 5..7
      return 'Medium Stock'
    end
    return 'High Stock'
  end

end
