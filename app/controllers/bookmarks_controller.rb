class BookmarksController < ApplicationController

  def create
    bookmark = current_user.bookmarks.create(event_id: params[:event_id])
    redirect_to events_url, notice:"このイベントに興味あることを公開しました"
  end

  def destroy
    bookmark = current_user.bookmarks.find_by(id: params[:id]).destroy
    redirect_to events_url, notice:"このイベントへの興味を解除しました"
  end
end
