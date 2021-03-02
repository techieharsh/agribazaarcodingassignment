class Address < ApplicationRecord
	belongs_to :user

	validates :line, :street, :city, :state, :pin_code, presence: true 
end
