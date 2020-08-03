class FavoritesController < ApplicationController

  def create
    favorite = current_user.favorites.build(hotel_id: params[:hotel_id])
    favorite.save
    redirect_to hotels_path
  end

  def destroy
    favorite = Favorite.find_by(hotel_id: params[:hotel_id], user_id: current_user.id)
    favorite.destroy
    redirect_to hotels_path
  end

end
