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
		movie = Movie.create(movie_params)
		render json: Movie.all
	end

	def by_category
		category = Category.find_by(:name => params[:id].capitalize)
		render json: category.movies
	end

	private 
		def movie_params
			params.require(:movie).permit(:title, :description, :image_url, :category_id)
		end
end
