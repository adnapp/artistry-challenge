Artist.destroy_all
Instrument.destroy_all

Artist.create(name: "Michael Jackson", age: rand(50), title: "King of Pop")
Artist.create(name: "Stevie Wonder", age: rand(50), title: "Little Stevie Wonder")
Artist.create(name: "Elvis Presley", age: rand(50), title: "the King")
Artist.create(name: "Whitney Houston", age: rand(50), title: "The Voice")
Artist.create(name: "Beyoncé", age: rand(50), title: "Destiny's Child")

Instrument.create(name: "Guitar", classification: "Strings", artist: Artist.first)
Instrument.create(name: "Violin", classification: "Strings", artist: Artist.first)
Instrument.create(name: "Flute", classification: "Woodwind", artist: Artist.first)
Instrument.create(name: "Xylophone", classification: "Percussion", artist: Artist.first)
