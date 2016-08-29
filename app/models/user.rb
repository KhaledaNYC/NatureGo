class User < ActiveRecord::Base
  has_many :walks
  has_many :organisms, through: :walks

  has_secure_password

  validates :password, presence: true, :on => :create

  def add_to_nature_lover_level
    self.nature_lover_level += 1 
  end

end
