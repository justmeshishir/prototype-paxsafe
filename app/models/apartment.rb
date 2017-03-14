class Apartment < ApplicationRecord
	validates :name, :rate, :address, :description, :access_token, presence: true
end
