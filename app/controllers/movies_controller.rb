class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index]
  

  def search
    if params[:search].present?
      @movies = Movie.search(params[:search])
    else
 redirect_to movies_path
    end
  end


  def index
    @movies = Movie.all
  end

  def new
    @movie = current_user.movies.build
  end


  def create
    @movie = current_user.movies.build(movie_params)

    if @movie.save
      redirect_to movie_path(@movie), notice: 'Movie was successfully created.'
    else
      render :new
    end
  end
 

  def show
    @reviews = Review.where(movie_id: @movie.id).order("created_at DESC")
  end

  def edit
    if @movie.user_id == current_user.id
      render 'edit'
    else 
      redirect_to movie_path(@movie)
    end
  end


  def update
  
      if @movie.update(movie_params)
       redirect_to @movie, notice: 'Movie was successfully updated.' 
      else
       render :edit 
     
      end
    end



  def destroy
    @movie.destroy
    redirect_to movies_path
  end


  private 

  def set_movie

    @movie = Movie.find(params[:id])
    # @movie = Movie.find_by(params[:id])  // find the post
    # unless current_user?(@movie.user)
    #   redirect_to user_path(current_user)
    # end
  end
 

  def movie_params
    params.require(:movie).permit(:title, :description, :movie_length, :director, :rating, :image, :user_id )
    # do i need to add user_id here so itll stay? ..... user: current_user attribute
    
  end


end
