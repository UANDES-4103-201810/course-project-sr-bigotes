class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :password
      t.string :name
      t.string :email
      t.string :phone
      t.string :personal_info

      t.timestamps
    end
  end
end
