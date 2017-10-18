class Inventory

attr_accessor :album_title, :artist_name, :genre, :quantity, :medium, :artist_id, :album_id

  def initialize(inventory_hash)
    @album_title = inventory_hash['album_title']
    @artist_name = inventory_hash['artist_name']
    @genre = inventory_hash['genre']
    @quantity = inventory_hash['quantity'].to_i()
    @medium = inventory_hash['medium']
    @artist_id = inventory_hash['artist_id'].to_i()
    @album_id = inventory_hash['album_id'].to_i()
  end

  def self.all()
    sql = '
    SELECT
    albums.title "album_title",
    artists.name "artist_name",
    albums.genre "genre",
    albums.quantity "quantity",
    albums.medium "medium",
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
    else
    return 'High Stock'
  end
end
end
