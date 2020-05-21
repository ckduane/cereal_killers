module ReviewsHelper
	def has_reviews?
		!@product.reviews.empty?
	end

	def left_review?
		found_review = Review.find_by(user_id: current_user.id, product_id: @product.id)
		found_review == nil ? false : true
	end

	def owns_review?(review)
		review.user == current_user ? true : false
	end

	def rating_average(reviews)
		ratings = []
		reviews.each {|r| ratings << r.rating}
		ratings.inject {|sum, el| sum + el}.to_f / ratings.size
	end

end
