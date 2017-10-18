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

artist5 = Artist.new({
  'name' => "Bruce Wooley"
  })

artist6 = Artist.new({
    'name' => "Robert Hazard"
    })

artist1.save()
artist2.save()
artist3.save()
artist4.save()
artist5.save()
artist6.save()


album1 = Album.new({
  'artist_id' => artist1.id,
  'title' => 'Iowa',
  'quantity' => 5,
  'medium' => 'CD',
  'genre' => 'Metal'
})

album2 = Album.new({
  'artist_id' => artist2.id,
  'title' => 'Hot Fuss',
  'quantity' => 10,
  'medium' => 'CD',
  'genre' => 'Rock'
})

album3 = Album.new({
  'artist_id' => artist2.id,
  'title' => 'Wonderful Wonderful',
  'quantity' => 1,
  'medium' => 'vinyl',
  'genre' => 'Rock'
})

album4 = Album.new({
  'artist_id' => artist3.id,
  'title' => 'Affirmation',
  'quantity' => 7,
  'medium' => 'CD',
  'genre' => 'Sickly Sweet Pop'
})

album5 = Album.new({
  'artist_id' => artist4.id,
  'title' => 'The Mind is a Terrible Thing to Taste',
  'quantity' => 1,
  'medium' => 'vinyl',
  'genre' => 'metal'
})

album6 = Album.new({
  'artist_id' => artist5.id,
  'title' => 'Video Killed the Radio Star',
  'quantity' => 1,
  'medium' => 'vinyl',
  'genre' => 'Pop Rock'
  })

album7 = Album.new({
  'artist_id' => artist6.id,
  'title' => 'Girls Just Wanna Have Fun',
  'quantity' => 1,
  'medium' => 'vinyl',
  'genre' => 'Pop Rock'
    })

album1.save()
album2.save()
album3.save()
album4.save()
album5.save()
album6.save()
album7.save()


binding.pry
nil
