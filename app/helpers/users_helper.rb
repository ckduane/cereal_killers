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

			count << tallies[remainder - 1]

			count.join("")
		end
	end

end
