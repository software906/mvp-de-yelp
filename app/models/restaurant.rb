class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :phone_number, :category, presence: true
   validates  :address, presence: true
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian)}
end
