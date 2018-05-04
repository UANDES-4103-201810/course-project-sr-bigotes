class UserFundProject < ApplicationRecord
  belongs_to :user
  belongs_to :user_project
end
