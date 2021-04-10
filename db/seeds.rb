# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Instrument.create(name: "Guitar")
Instrument.create(name: "Bass")
Instrument.create(name: "Drums")
Instrument.create(name: "Keys")
Instrument.create(name: "Saxophone")

User.create(first_name: "John", last_name: "Doe", email: "johndoe@thehang.com", password: "123", city: "Denver", primary_instrument_id: 1, secondary_instrument_id: 5)
User.create(first_name: "Jane", last_name: "Doe", email: "janedoe@thehang.com", password: "123", city: "San Francisco", primary_instrument_id: 2, secondary_instrument_id: 4, other_instruments: [1,2,3,4,5])
User.create(first_name: "Andy", last_name: "Doe", email: "andydoe@thehang.com", password: "123", city: "New York City", primary_instrument_id: 3, secondary_instrument_id: 3, other_instruments: [1,2,3,4,5])
User.create(first_name: "Mark", last_name: "Doe", email: "markdoe@thehang.com", password: "123", city: "Austin", primary_instrument_id: 4, secondary_instrument_id: 2, other_instruments: [1,2,3,4,5])
User.create(first_name: "Sara", last_name: "Doe", email: "saradoe@thehang.com", password: "123", city: "Miami", primary_instrument_id: 5, secondary_instrument_id: 1, other_instruments: [1,2,3,4,5])

UserInstrument.create(user_id:1, instrument_id:5)
UserInstrument.create(user_id:2, instrument_id:4)
UserInstrument.create(user_id:3, instrument_id:3)
UserInstrument.create(user_id:4, instrument_id:2)
UserInstrument.create(user_id:5, instrument_id:1)

# t.index :flute
# t.index :clarinet
# t.index :saxophone
# t.index :oboe
# t.index :bassoon
# t.index :trumpet
# t.index :trombone
# t.index :tuba
# t.index :electric_bass
# t.index :double_bass
# t.index :acoustic_guitar
# t.index :electric_guitar
# t.index :drums
# t.index :percussion
# t.index :piano
# t.index :vocals_female_soprano
# t.index :vocals_female_alto
# t.index :vocals_male_tenor
# t.index :vocals_male_baritone
# t.index :violin
# t.index :viola
# t.index :cello
# t.index :accordion
# t.index :banjo
# t.index :mandolin
# t.index :ukulele
# t.index :dj