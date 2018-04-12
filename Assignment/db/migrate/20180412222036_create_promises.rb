class CreatePromises < ActiveRecord::Migration[5.2]
  def change
    create_table :promises do |t|
      t.integer :id
      t.string :name
      t.string :description
      t.integer :amount

      t.timestamps
    end
  end
end
