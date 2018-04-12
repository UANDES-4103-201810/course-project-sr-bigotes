class CreatePermissions < ActiveRecord::Migration[5.2]
  def change
    create_table :permissions do |t|
      t.integer :permissions_id
      t.string :permissions_type

      t.timestamps
    end
  end
end
