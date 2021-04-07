class UpdateUsersTable < ActiveRecord::Migration[6.1]
  def change
    change_table :users do |t|
      t.string :phone
      t.string :website
      t.string :travel_distance
      t.string :description

    end
  end
end
