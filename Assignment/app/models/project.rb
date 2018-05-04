class Project < ApplicationRecord
  belongs_to :user
  belongs_to :user_project
  belongs_to :category
end
