class Bookmark < ApplicationRecord
  belongs_to :review
  belongs_to :user

  #uniqueness based on user > a user can bookmark only once the same review
  validates :review, uniqueness: { scope: :user}
end
