class User < ApplicationRecord
	has_many :user_instruments
	has_many :instruments, through: :user_instruments

	# validates :email, uniqueness: true, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }

	# validates :first_name, :last_name, presence: true
  
end
