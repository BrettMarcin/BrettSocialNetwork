class Post < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true, length: {maximum: 140} #has to be 140 characters
  default_scope -> { order(created_at: :desc)} #newest thoughts posted
end
