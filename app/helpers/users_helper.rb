module UsersHelper

	def tally(reviews)
		tallies = ['𝍩', '𝍪','𝍫','𝍬','卌']
		count = []

		if reviews.length == 0
			'0'
		else
			quotient = reviews.length / 5
			
			quotient.times do
				count << tallies[4]
			end

			remainder = reviews.length % 5

			if remainder != 0
				count << tallies[remainder - 1]
			end

			count.join("")
		end
	end

	def murdering(users)
		wrote_reviews = users.select { |u| u.reviews.length > 0 }
		wrote_reviews.sort { |a, b| b.reviews.length <=> a.reviews.length }
	end

end
