class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.string :city
      t.string :phone
      t.string :website
      t.string :travel_distance
      t.string :description
      t.string :state

      t.integer :primary_instrument_id
      t.integer :secondary_instrument_id
      t.integer :other_instruments, array: true, default: []

      t.timestamps
    end
  end
end



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