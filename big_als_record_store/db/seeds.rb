require_relative( '../models/album.rb' )
require_relative( '../models/artist.rb' )
require('pry-byebug')

Album.delete_all()
Artist.delete_all()

# add artists to artist table
artist1 = Artist.new({
  'id' => 1,
  'name' => "Slipknot"
})

artist2 = Artist.new({
  'id' => 2,
  'name' => "The Killers"
})

artist3 = Artist.new({
  'id' => 3,
  'name' => "Savage Garden"
})

artist4 = Artist.new({
  'id' => 4,
  'name' => "Ministry"
})

artist1.save()
artist2.save()
artist3.save()
artist4.save()

album1 = Album.new({
  'id' => 1,
  'artist_id' => 1,
  'title' => 'Iowa',
  'quantity' => 5,
  'medium' => 'CD'
})

album2 = Album.new({
  'id' => 2,
  'artist_id' => 2,
  'title' => 'Hot Fuss',
  'quantity' => 10,
  'medium' => 'CD'
})

album3 = Album.new({
  'id' => 3,
  'artist_id' => 2,
  'title' => 'Wonderful Wonderful',
  'quantity' => 1,
  'medium' => 'vinyl'
})

album4 = Album.new({
  'id' => 4,
  'artist_id' => 3,
  'title' => 'Affirmation',
  'quantity' => 7,
  'medium' => 'CD'
})

album5 = Album.new({
  'id' => 5,
  'artist_id' => 4,
  'title' => 'The Mind is a Terrible Thing to Taste',
  'quantity' => 1,
  'medium' => 'vinyl'
})

album1.save()
album2.save()
album3.save()
album4.save()
album5.save()


binding.pry
nil
