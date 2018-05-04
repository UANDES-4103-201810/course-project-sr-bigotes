class CreatePromises < ActiveRecord::Migration[5.2]
  def change
    create_table :promises do |t|
      t.string :name
      t.text :description
      t.integer :amount
      t.date :delivery_date
      t.references :user, foreign_key: true
      t.references :user_project, foreign_key: true

      t.timestamps
    end
  end
end
