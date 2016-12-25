require 'rails_helper'

describe User , :type => :model do 
	it "asserts the truth" do
		user = build(:user)
		expect(true).to eq true
	end
end
