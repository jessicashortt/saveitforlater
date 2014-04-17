class User < ActiveRecord::Base
  before_save { self.username = username.downcase }
  
  has_many :memos, dependent: :destroy

  validates :username, presence: true, uniqueness: true
  validates :name, length: { maximum: 200 } 

  has_secure_password
  validates :password, length: { minimum: 6 }
end
