class Brand < ApplicationRecord
	has_many :reviews

	validates :name, uniqueness: true
end
