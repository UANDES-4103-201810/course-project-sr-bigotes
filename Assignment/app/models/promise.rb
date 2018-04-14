class Promise < ApplicationRecord
  validates :name, format: { with: /\A[a-zA-Z]+\z/,message: "only allows letters" }, presence: true
  validates :description, format: { with: /\A[a-zA-Z]+\z/,message: "only allows letters" }, presence: true
  validates :amount, format: { with: /\A[+-]?\d+\z/,message: "only allows numbers" }, presence: true
  has_one :project
  belongs_to :project
end
