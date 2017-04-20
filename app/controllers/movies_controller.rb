class MoviesController < ApplicationController
	def index
		render json: Movie.all
	end

	def update
		movie = Movie.find(params[:id])
		movie.box_office = params[:newBoxOffice].to_i
		movie.save
		render json: movie
	end

	def show
		render json: Movie.find(params[:id])
	end

	def create
		#create a new movie
	end

	def by_category
		category = Category.find_by(:name => params[:id].capitalize)
		render json: category.movies
	end
end
