require 'rails_helper'

RSpec.describe Comment, type: :model do
	let(:comment) { build(:comment) }
	context "which is valid" do
		it "has a valid user" do
			expect(comment.user.valid?).to eq true
		end

		it "has a valid post" do
			expect(comment.post.valid?).to eq true
		end
	end
end
