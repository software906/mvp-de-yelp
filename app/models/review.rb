class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, presence: true
  validates :content, presence: true
  validates :content, length: { minimum: 5}
  #validates_inclusion_of :rating, :in => 0..5
  validates :rating, numericality: { greater_than: 0, less_than_or_equal_to: 5}
  # validates :rating, numericality: { greater_than: 0, less_than_or_equal_to: 5}
end
