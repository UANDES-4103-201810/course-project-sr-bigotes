class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.integer :projects_id
      t.string :name
      t.string :category
      t.string :description
      t.integer :funded_amount
      t.integer :current_money

      t.timestamps
    end
  end
end
