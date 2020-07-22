class Product < ApplicationRecord
	has_many :reviews
	has_one_attached :photo
	has_many_attached :uploads
	accepts_nested_attributes_for :reviews

	validates :name, presence: true
end
