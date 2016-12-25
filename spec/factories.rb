FactoryGirl.define do 
	factory :user do
		name "Vlad Nedelescu"
		email "nedelescu.vlad@gmail.com"
		password "itsasecret"
		password_confirmation "itsasecret"
	end

	factory :post do
		user
		title "This is a valid title"
		body "This is a valid body. It can contain a lot of text."
	end

	factory :comment do 
		post
		user User.new(name: "Sebastian Fors", email: "sebastian.fors@gmail.com", password: "twitch", password_confirmation: "twitch")
	end
end
