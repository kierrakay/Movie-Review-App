class ReviewsController < ApplicationController

  before_action :set_movie
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  

 
  def index
@reviews = Review.all 
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.create(review_params)
    @review.user_id = current_user.id
    @review.movie_id = @movie.id
    if @review.save
      redirect_to @movie
      # redirect_to reviews_path(@review)

      # this @movie works cause we set the movie with the set_movie method
    else
      render 'new'
    end
  end

  def show
  
  end

  def edit
  if @review.user_id == current_user.id
    render 'edit'
  else 
  #  redirect_to review_path(@review)
    redirect_to movie_reviews_path(@movie)
  end
end

  def update
    @review.update(review_params)
    # redirect_to reviews_path
    redirect_to @movie
  end

  def destroy
    @review.destroy
    # redirect_to reviews_path
    redirect_to @movie
  end

  private
  def set_review
    @review = Review.find(params[:id])
  end

  def set_movie
    @movie = Movie.find(params[:movie_id])
  end

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end




  