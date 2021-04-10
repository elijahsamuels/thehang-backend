class CreateUserInstruments < ActiveRecord::Migration[6.1]
  def change
    create_table :user_instruments do |t|
      # t.index [:user_id, :instrument_id]
      # t.index [:instrument_id, :user_id]
      
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :instrument, null: false, foreign_key: true

    end
  end
end
