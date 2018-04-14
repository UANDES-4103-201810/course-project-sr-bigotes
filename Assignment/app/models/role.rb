class Role < ApplicationRecord
  alidates :role_type, format: { with: /\A[a-zA-Z]+\z/,message: "only allows letters" }, presence: true
  has_many :users
  has_many :permissions
end
