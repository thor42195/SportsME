class ChatusersController < ApplicationController
  before_action :authenticate_user!

  def index
    @chatusers = Chatuser.all
  end

  def create
    if Chatuser.between(params[:sender_id], params[:recipient_id]).present?
      @chatusers = Chatuser.between(params[:sender_id], params[:recipient_id]).first
    else
      @chatusers = Chatuser.create!(chatusers_params)
    end
    redirect_to chatuser_chatmessages_path(@chatusers)
  end

  private

  def chatusers_params
    params.permit(:sender_id, :recipient_id)
  end
end
