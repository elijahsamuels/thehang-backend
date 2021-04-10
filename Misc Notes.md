```ruby
Instrument.find_by_id(a.primary_instrument_id).name
# returns Guitar

Instrument.find_by_id(a.secondary_instrument_id).name
# returns Guitar

Instrument.find_by_id(a.other_instruments)
# returns nil

instrumentsArray = User.find_by_id(1).other_instruments
# returns array of instrument IDs

instrumentsArray.map.each{ |i| Instrument.find_by_id(i).name }
# returns array of instrument names AFTER setting the array from the user instrument IDs

User.find_by_id(1).other_instruments.map{ |i| Instrument.find_by_id(i).name }
# returns array of instrument names
















```