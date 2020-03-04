class UsersController < ApplicationController
    # before_action :authenticate_user!,  only: [:show]
    before_action :authenticate_user!
        before_action :authorize_user
     
    
#     def index
# @user = User.all
#     end 

    # def index
    #     if user_id == current_user.id
    #       render 'index'
    #     else 
    #       redirect_to user_path(@user)
    #     end
    #   end
    #   take above out maybe 3/4/2020

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




