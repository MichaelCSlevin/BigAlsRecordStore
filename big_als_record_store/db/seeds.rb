require_relative( '../models/album.rb' )
require_relative( '../models/artist.rb' )
require_relative( '../models/inventory.rb' )

require('pry-byebug')

Album.delete_all()
Artist.delete_all()

# add artists to artist table
artist1 = Artist.new({
  'name' => "Slipknot"
})

artist2 = Artist.new({
  'name' => "The Killers"
})

artist3 = Artist.new({
  'name' => "Savage Garden"
})

artist4 = Artist.new({
  'name' => "Ministry"
})

artist1.save()
artist2.save()
artist3.save()
artist4.save()

album1 = Album.new({
  'artist_id' => artist1.id,
  'title' => 'Iowa',
  'quantity' => 5,
  'medium' => 'CD'
})

album2 = Album.new({
  'artist_id' => artist2.id,
  'title' => 'Hot Fuss',
  'quantity' => 10,
  'medium' => 'CD'
})

album3 = Album.new({
  'artist_id' => artist2.id,
  'title' => 'Wonderful Wonderful',
  'quantity' => 1,
  'medium' => 'vinyl'
})

album4 = Album.new({
  'artist_id' => artist3.id,
  'title' => 'Affirmation',
  'quantity' => 7,
  'medium' => 'CD'
})

album5 = Album.new({
  'artist_id' => artist4.id,
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
