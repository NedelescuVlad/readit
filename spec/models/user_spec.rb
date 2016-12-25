require 'rails_helper'

RSpec.describe User, type: :model do

	let(:user) { build(:user) }

	context "with valid fields" do
		it "is valid" do
			expect(user.valid?).to eq true
		end
	end

	context "with blank name" do
		it "is invalid" do
			user.name = " "
			expect(user.valid?).to eq false
		end
	end

	context "with blank email" do
		it "is invalid" do
			user.email = " "
			expect(user.valid?).to eq false
		end
	end

	context "with non-unique email" do
		it "is invalid" do
			user.save
			user_dup = user.dup
			expect(user_dup.valid?).to eq false
		end
	end

	context "with blank password" do
		it "is invalid" do
			user.password = " "
			expect(user.valid?).to eq false
		end
	end

	context "with email address of the wrong format" do
		it "is invalid" do
			invalid_emails = %w[kappa kappa@kappa @kappa.com vlad@kappa..com @]
			invalid_emails.each do |invalid_email|
				user.email = invalid_email 
				expect(user.valid?).to eq false
			end
		end
	end

	context "with email address of the right format" do
		it "is valid" do
			valid_emails = %w[vlad@example.com vlad.nedelescu@example.com vlad@kcl.ac.uk vlad.nedelescu@kcl.ac.uk]
			valid_emails.each do |valid_email|
				user.email = valid_email
				expect(user.valid?).to eq true
			end
		end
	end
end
