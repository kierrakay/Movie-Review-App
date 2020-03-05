class UsersController < ApplicationController
    # before_action :authenticate_user!,  only: [:show]
    before_action :authenticate_user!
    before_action :authorize_user
     
    


    def show
        # @user = User.find(params[:id])
        authorize_user
        @user_movies = @user.movies
    end

    

    private
 

    def authorize_user 
      @user = User.find(params[:id])
      redirect_to root_url unless current_user == @user
    end
    #stops users from hacking url and going to anothers show page
end




