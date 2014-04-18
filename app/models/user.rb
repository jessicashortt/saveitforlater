class User < ActiveRecord::Base
  before_save { self.username = username.downcase }
  
  has_many :memos, dependent: :destroy

  validates :username, presence: true, uniqueness: true
  validates :name, length: { maximum: 200 } 

  has_secure_password
  validates :password, length: { minimum: 6 }


  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.digest(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

   def feed
    # This is preliminary. See "Following users" for the full implementation.
    Memo.where("user_id = ?", id)
  end

  private

    def create_remember_token
      self.remember_token = User.digest(User.new_remember_token)
    end
end
