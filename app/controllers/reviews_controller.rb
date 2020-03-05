class ReviewsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_movie
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  

  def new
    @review = Review.new
  end


  def create
    @review = Review.create(review_params)
    @review.user_id = current_user.id
    @review.movie_id = @movie.id
      if @review.save
        redirect_to @movie, notice: 'Review was successfully created.'
        # this @movie works cause we set the movie with the set_movie method
      else
        render 'new'
      end
  end


  def show
    if @review.user_id == current_user.id
      render 'show'
    else 
      redirect_to movie_path(@movie)
    end
  end
  
  

  def edit
    if @review.user_id == current_user.id
      render 'edit'
    else 
    redirect_to movie_path(@movie)
    end
  end


  def update
    @review.update(review_params)
    redirect_to @movie, notice: 'Review was successfully created.'
  end


  def destroy
    @review.destroy
    redirect_to @movie
    # redirect_to root_path
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





  