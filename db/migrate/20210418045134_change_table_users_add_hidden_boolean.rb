class ChangeTableUsersAddHiddenBoolean < ActiveRecord::Migration[6.1]
  change_table :users do |t|
    t.boolean :hidden

  end
end
