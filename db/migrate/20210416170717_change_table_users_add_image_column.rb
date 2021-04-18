class ChangeTableUsersAddImageColumn < ActiveRecord::Migration[6.1]
    change_table :users do |t|
      t.string :imageUrl

    end
  end
