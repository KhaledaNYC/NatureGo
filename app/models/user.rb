class User < ActiveRecord::Base
  has_many :walks
  has_many :organisms, through: :walks

  validates :password, presence: true, :on => :create

end
