class User < ApplicationRecord
	VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

	validates :name, presence: true
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, 
						uniqueness: true
	has_secure_password

	validates :password, presence: true
end
