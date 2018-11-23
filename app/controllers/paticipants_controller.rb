class PaticipantsController < ApplicationController
  def create
    @paticipant = current_user.paticipants.create(event_id: params[:event_id])
    if @paticipant.save
      redirect_back(fallback_location: events_path)
    end
  end

  def destroy
    @paticipant = current_user.paticipants.find_by(id: params[:id]).destroy
    if @paticipant.save
      redirect_back(fallback_location: events_path)
    end
  end
end
