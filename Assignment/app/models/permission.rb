class Permission < ApplicationRecordz
  validates :permission_type, format: { with: /\A[a-zA-Z]+\z/,message: "only allows letters" }, presence: true
  has_many :roles
  has_many :projects
end
