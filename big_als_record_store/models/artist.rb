require_relative('../db/sql_runner')

class Artist

attr_accessor( :id, :name)

  def initialize(artist_hash)
    @id = artist_hash["id"].to_i if artist_hash["id"]
    @name = artist_hash["name"]
  end

  def save()
    sql = "INSERT INTO artists (
    name
  )
    VALUES
  (
    $1
  )
  returning id;"
  values = [@name]
  results = SqlRunner.run(sql, 'tag', values)
  @id = results[0]['id'].to_i()
  end

  def self.all()
    sql = "SELECT * FROM artists"
    values = []
    artists = SqlRunner.run(sql, "show_all_artists", values)
    return artists.map { |artist| Artist.new(artist) }
  end

  def self_find(id)
    sql = "SELECT * FROM artists WHERE id = $1"
    values = [id]
    results = SqlRunner.run(sql, "find_artist", values)
    return Artist.new(results.first)
  end

  def update(id)
      sql = "UPDATE artist SET (name) = $1, (id) = ($2)
        WHERE id = $2"
      values = [@name, @id]
        SqlRunner.run(sql, "update_artist", values)
      end



  def delete(id)
  sql = "DELETE FROM artists where id = $1"
  values = [@id]
  SqlRunner.run(sql, "delete_artist", values)
  end

  def self.delete_all()
    sql = "DELETE FROM artists"
    values = []
    SqlRunner.run(sql, "delete_all_artists", values)
  end



end
