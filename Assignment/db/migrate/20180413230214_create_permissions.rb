class CreatePermissions < ActiveRecord::Migration[5.2]
  def change
    create_table :permissions do |t|
      t.string :permission_type

      t.timestamps
    end
  end
end
