class Product < ApplicationRecord
	has_many :reviews
	has_many_attached :uploads
	accepts_nested_attributes_for :reviews
end
