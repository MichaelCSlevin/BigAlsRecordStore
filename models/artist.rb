#initialize artist class
require_relative('../db/sql_runner')

class Artist

attr_accessor( :id, :name:)

  def initialize(artist_hash)
    @id = artist_hash['id'].to_i if artist_hash['id']
    @name = artist_hash['name']
  end

  def save


end



#save artist function

#add artist function

#modify artist function

#delete artist function
