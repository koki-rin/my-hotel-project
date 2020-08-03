class UsersController < ApplicationController



  def show
    @user = current_user
    @favorite_hotels = @user.favorite_hotels

  

  
  end
  
end

