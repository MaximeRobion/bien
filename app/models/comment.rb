class Comment < ApplicationRecord
  belongs_to :review
  belongs_to :user

  validates :body, presence: true

  profanity_filter :body
  #=> banned words will be replaced with @#=>$%
end
