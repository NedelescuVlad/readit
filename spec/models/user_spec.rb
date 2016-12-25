require 'rails_helper'
require 'support/factory_girl'

describe User , :type => :model do 
	it "asserts the truth" do
		#user = build(:user)
		expect(true).to eq true
	end
end
