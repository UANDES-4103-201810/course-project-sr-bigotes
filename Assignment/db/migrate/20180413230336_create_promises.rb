class CreatePromises < ActiveRecord::Migration[5.2]
  def change
    create_table :promises do |t|
      t.string :name
      t.text :description
      t.integer :amount

      t.timestamps
    end
  end
end
