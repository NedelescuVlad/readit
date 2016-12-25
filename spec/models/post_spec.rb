require 'rails_helper'

RSpec.describe Post, type: :model do

	let(:post) { build(:post) }

	context "with valid fields" do
		it "is valid" do
			expect(post.valid?).to eq true
		end

		it "belongs to a valid user" do
			user = post.user
			expect(user).not_to eq nil
			expect(user.valid?).to eq true
		end
	end

	context "with a blank title" do
		it "is invalid" do
			post.title = " "
			expect(post.valid?).to eq false
		end
	end

	context "that belongs to no user" do
		it "is invalid" do
			post.user_id = nil
			expect(post.valid?).to eq false
		end
	end

	context "with a title that is too long" do
		it "is invalid" do
			post.title = "a" * 256
			expect(post.valid?).to eq false
		end
	end

	context "with a blank body" do
		it "is invalid" do
			post.body = " "
			expect(post.valid?).to eq false
		end
	end

	context "with a body that is too short" do
		it "is invalid" do
			post.body = "a" * 49
			expect(post.valid?).to eq false
		end
	end
end
