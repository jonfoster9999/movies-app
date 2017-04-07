class CommentsController < ApplicationController

	def create
		movie = Movie.find(params[:movie_id])
		movie.comments.create(:content => params[:content], :email => params[:email])
		render json: movie.comments
	end

	def index
		render json: Comment.all
	end
end
