class CreateUserFundProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :user_fund_projects do |t|
      t.integer :amount
      t.references :user, foreign_key: true
      t.references :user_project, foreign_key: true

      t.timestamps
    end
  end
end
