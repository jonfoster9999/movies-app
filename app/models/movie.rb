class Movie < ApplicationRecord
	has_many :movie_actors
	has_many :actors, through: :movie_actors
	has_many :movie_locations
	has_many :locations, through: :movie_locations
	has_many :comments
	belongs_to :category
end
