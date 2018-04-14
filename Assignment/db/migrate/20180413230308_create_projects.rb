class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :category
      t.text :description
      t.integer :funded_amount
      t.integer :current_money

      t.timestamps
    end
  end
end
