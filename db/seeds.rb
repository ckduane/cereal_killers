# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

products = Product.create([
	{ name: 'Frooty Pubbles' },
	{ name: 'Cinnamon Toast Crunch' },
	{ name: "Reese's Puffs" },
	{ name: 'Cookie Crisp' }
])

user1 = User.new(
	username: 'test',
	email: 'test@test.com',
	password: 'test123',
	password_confirmation: 'test123'
)
user1.save!

user2 = User.new(
	username: 'rockeater',
	email: 'rocks@ieatthem.com',
	password: 'test123',
	password_confirmation: 'test123'
)
user2.save!

frooty_pubbles_reviews = products[0].reviews.create([
	{ user_id: 1,
		rating: 4,
		comment: "Its crunchy like rocks and colorful like the sky after it rains and all the clouds are gone and theres all those colors in an upside down u shape, or more like a wide n"
	},
	{ user_id: 2,
		rating: 5,
		comment: "crunch crunch yum yum rocks in my mouth i get to eat lots of rocks at once but its safe becuase its made of corn and sugar and thats ok to eat no one will look at me weird but i wish they came in gray. going to try the brown version soon, but thats more like hard mud, not pubbles"
	}
])

cookie_crisp_reviews = products[3].reviews.create([
	{ user_id: 1,
		rating: 1,
		comment: "not like cookies at all! did they even taste cookies when they made this cereal?? or did they just look at some in the store and think oh! i know how this will sell as a breakfast item, this deliciuosly decadent thng i have never before had but now i feel confident enough to create my own even though i know NOTHING about cookies or even NOTHING about crisp!"
	}
])