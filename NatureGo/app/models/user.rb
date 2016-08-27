class User < ActiveRecord::Base
  has_many :walks
  has_many :organisms, through: :walks
end
