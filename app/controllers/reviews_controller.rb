class ReviewsController < ApplicationController


def index
  # this is our list page for our reviews
  @number  = rand(100)
  @reviews = ["The Smile", "Baby Bo's", "Chipotle", "Albiom", "McDonalds"]
end

def new

end

end
