require 'rails_helper'

FactoryGirl.define do 
	factory :user do
		name "Vlad Nedelescu"
		email "nedelescu.vlad@gmail.com"
		password "itsasecret"
		password_confirmation "itsasecret"
	end
end
