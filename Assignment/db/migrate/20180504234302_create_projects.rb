class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.integer :funded_amount
      t.integer :current_money
      t.date :limit_time
      t.references :user_project, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
