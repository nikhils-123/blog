class Movie < ApplicationRecord
	validates :name , presence: true
	validates :terms_of_service , acceptance: false
end
