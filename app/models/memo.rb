class Memo < ActiveRecord::Base
  belongs_to :user
  validates :info, presence: true, length: { maximum: 160 }
  validates :link, presence: true, length: { maximum: 1500 }
  default_scope -> { order('created_at DESC') }
  validates :user_id, presence: true

end
