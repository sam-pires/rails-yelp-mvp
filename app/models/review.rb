class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, :rating, :restaurant_id, presence: true
  validates :rating, inclusion: { in: (0..5), message: "rating should be between 0 and 5"}
  validates :rating, numericality: { only_integer: true }
end
