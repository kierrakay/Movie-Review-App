class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]
  

def search
  if params[:search].present?
    @movies = Movie.search(params[:search])
  else
    @movies = Movie.all
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
      # if @movie.valid? wont work here
      redirect_to movie_path(@movie), notice: 'Movie was successfully created.'
      
    else
      render :new
    end
  end
 

  def show
    @reviews = Review.where(movie_id: @movie.id).order("created_at DESC")
  end

  def edit
   
  end

  def update
    respond_to do |format|
      if @movie.update(movie_params)
        format.html { redirect_to @movie, notice: 'Movie was successfully updated.' }
        # format.json { render :show, status: :ok, location: @movie }
      else
        format.html { render :edit }
        # format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @movie.destroy
    redirect_to movies_path
  end



  private 
  def set_movie
    @movie = Movie.find(params[:id])
  
  end

  def movie_params
    params.require(:movie).permit(:title, :description, :movie_length, :director, :rating, :image, user: current_user)
    # do i need to add user_id here so itll stay?
    
  end


end
