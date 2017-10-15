require_relative('../db/sql_runner')

class Album

attr_accessor :id, :artist_id, :title, :quantity, :medium

  def initialize (album_hash)
    @id = album_hash['id'].to_i if album_hash['id']
    @artist_id = album_hash['artist_id'].to_i if album_hash['artist_id']
    @title = album_hash['title']
    @quantity = album_hash['quantity']
    @medium = album_hash['medium']
  end

  def save
    sql = "INSERT INTO albums (
    artist_id,
    title,
    quantity,
    medium
    )
      VALUES
    (
      $1, $2, $3, $4
    )
    RETURNING id;"
    values = [@artist_id, @title, @quantity, @medium]
    results = SqlRunner.run(sql, "save_album", values)
    @id = results[0]['id'].to_i()
  end

  def self.all()
    sql = "SELECT * FROM albums"
    values = []
    artists = SqlRunner.run(sql, "show_all_albums", values)
    return albums.map { |album| Album.new(album) }
  end

  def self_find(id)
    sql = "SELECT * FROM albums WHERE id = $1"
    values = [id]
    results = SqlRunner.run(sql, "find_album", values)
    return Album.new(results.first)
  end

  def update(id)
      sql = "UPDATE albums SET (title) = $1, (artist_id) = ($2)
        WHERE id = $2"
      values = [@title, @artist_id]
        SqlRunner.run(sql, "update_title", values)
      end



    def delete(id)
    sql = "DELETE FROM albums where id = $1"
    values = [@id]
    SqlRunner.run(sql, "delete_album", values)
    end

    def self.delete_all()
      sql = "DELETE FROM albums"
      values = []
      SqlRunner.run(sql, "delete_all_albums", values)
    end

    def inventory()
      case @quantity
      when 0..4
        return 'Low Stock'
      when 5..7
        return 'Medium Stock'
      end
      return 'High Stock'
    end
end
