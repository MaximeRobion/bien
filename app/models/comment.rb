class Comment < ApplicationRecord
  belongs_to :review

  validates :body, presence: true

  profanity_filter :body 
  #=> banned words will be replaced with @#=>$%
end
