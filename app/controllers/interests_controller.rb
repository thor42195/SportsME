class InterestsController < ApplicationController

  def create
    interest = current_user.interests.create(event_id: params[:event_id])
    redirect_to events_url, notice:"このイベントに興味あることを公開しました"
  end

  def destroy
    interest = current_user.interests.find_by(id: params[:id]).destroy
    redirect_to events_url, notice:"このイベントへの興味を解除しました"
  end
end
