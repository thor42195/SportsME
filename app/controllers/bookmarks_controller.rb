class BookmarksController < ApplicationController

  def create
    @bookmark = current_user.bookmarks.create(event_id: params[:event_id])
    if @bookmark.save
      redirect_back(fallback_location: events_path)
    end
  end

  def destroy
    @bookmark = current_user.bookmarks.find_by(id: params[:id]).destroy
    if @bookmark.save
      redirect_back(fallback_location: events_path)
    end
  end
end
