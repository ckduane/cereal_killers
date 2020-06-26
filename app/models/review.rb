class Review < ApplicationRecord
	belongs_to :user
	belongs_to :product

	validates :rating, presence: true
	validates :rating, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
	validates_associated :product, :user

	has_rich_text :content
end
