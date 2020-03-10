class Review < ApplicationRecord
  belongs_to :restaurant
  # # @review.restaurant = @restaurant
  # def restaurant=(restaurant)
  #   @review.update(restaurant_id: restaurant.id)
  # end

  # # review.restaurant
  # def restaurant
  #   Restaurant.find(review.restaurant_id)
  # end
  validates :content, presence: true
  RATING = [0, 1, 2, 3, 4, 5]
  validates :rating, presence: true, inclusion: { in: RATING }, numericality: { only_integer: true }
end
