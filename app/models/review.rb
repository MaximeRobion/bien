class Review < ApplicationRecord

  #add association : one-to-many relationship
  has_many :comments
  has_many :bookmarks
  belongs_to :user


  geocoded_by :address
  after_validation :geocode

  validates :title, presence: true
  validates :body, length: {minimum: 10}
  validates :score, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }
  validates :restaurant, presence: true
  validates :address, presence: true

  profanity_filter :body
  profanity_filter :title

  def to_param
    id.to_s + "-" + title.parameterize
  end

end
