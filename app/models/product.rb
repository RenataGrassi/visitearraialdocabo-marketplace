class Product < ApplicationRecord
  belongs_to :company
  has_many :shopping_carts, through: :bookings
  validates :name, :capacity, :price, :activity, presence: true
  validates :activity, inclusion: { in: ["day trip", "dive"]}
  validates :price, numericality: { greater_than_or_equal_to: 0}
  validates :capacity, numericality: { greater_than: 0}
  has_one_attached :photo
end
