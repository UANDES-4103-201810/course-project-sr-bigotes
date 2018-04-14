class User < ApplicationRecord
  validates :user_name, presence: true
  validates :password, presence: true
  validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "Not valid email" },  presence: true
  validates :phone, format: { without: /\A[a-zA-Z]+\z/,message: "phone only with out contry number" }

  before_create :set_phone, on: :validate

  has_one :role
  has_many :projects, through: :role
  has_many :projects, through: :permissions


  private

  def set_phone

    self.phone = "+56" + self.phone

  end
end
