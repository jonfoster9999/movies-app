class MoviesController < ApplicationController
	def index
		render json: Movie.all
	end

	def show
		render json: Movie.find(params[:id])
	end

	def by_category
		category = Category.find_by(:name => params[:id].capitalize)
		render json: category.movies
	end
end
