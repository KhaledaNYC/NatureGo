class User < ActiveRecord::Base
  has_many :walks
  has_many :organisms, through: :walks
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment :avatar,
  content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
  has_secure_password
  validates :password, presence: true, :on => :create

  def add_to_nature_lover_level
    self.nature_lover_level += 1
  end

end
