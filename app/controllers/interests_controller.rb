class InterestsController < ApplicationController

  def create
    @interest = current_user.interests.create(event_id: params[:event_id])
    if @interest.save
      redirect_back(fallback_location: events_path)
    end
  end

  def destroy
    @interest = current_user.interests.find_by(id: params[:id]).destroy
    if @interest.save
      redirect_back(fallback_location: events_path)
    end
  end
end
