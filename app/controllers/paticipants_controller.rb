class PaticipantsController < ApplicationController
  def create
    paticipant = current_user.paticipants.create(event_id: params[:event_id])
    notice: "このイベントに参加予定です"
  end

  def destroy
    paticipant = current_user.paticipants.find_by(id: params[:id]).destroy
    notice: "このイベントへの参加をキャンセルしました"
  end
end
