class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable,  :validatable

  has_many :group_users
  has_many :groups, through: :group_users
  has_many :messages
  validates :name, presence: true, uniqueness: {case_sensitive: true}

end
