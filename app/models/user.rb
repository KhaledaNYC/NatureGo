class User < ActiveRecord::Base
  has_many :walks
  has_many :organisms, through: :walks

  has_secure_password

  validates :password, presence: true, :on => :create

end
