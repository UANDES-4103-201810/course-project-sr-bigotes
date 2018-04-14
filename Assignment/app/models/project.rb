class Project < ApplicationRecord
  validates :name, presence: true
  validates :category, format: { with: /\A[a-zA-Z]+\z/,message: "only allows letters" }, presence: true
  validates :description, presence: true
  validates :funded_amount, format: { with: /\A[+-]?\d+\z/,message: "only allows numbers" }, presence: true
  validates :current_money, format: { with: /\A[+-]?\d+\z/,message: "only allows numbers" }, presence: true
  has_many :permissions
  has_many :promises
end
