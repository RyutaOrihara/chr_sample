class FavoritesController < ApplicationController

  def create
    favorite = current_user.favorites.create(event_id: params[:event_id])
    redirect_to events_url,notice: "#{favorite.event.user.username}のイベントをお気に入りにしました。"
  end

  def destroy
    favorite = current_user.favorites.find_by(id: params[:id]).destroy
    redirect_to events_url, notice: "#{favorite.event.user.username}のイベントをお気に入り解除しました。"
  end
end
