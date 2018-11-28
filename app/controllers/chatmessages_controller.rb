class ChatmessagesController < ApplicationController
  before_action do
    @chatuser = Chatuser.find(params[:chatuser_id])
  end
  before_action :set_user, only:[:index]

  def index
    if @chatuser.sender_id != current_user.id && @chatuser.recipient_id != current_user.id
      redirect_to current_user
    end
    @chatmessages = @chatuser.chatmessages
    if @chatmessages.length > 10
      @over_ten = true
      @chatmessage = Chatmessage.where(id: @chatmessages[-10..-1].pluck(:id))
    end

    if params[:m]
      @over_ten = false
      @chatmessage = @chatuser.chatmessages
    end

    if @chatmessages.last
      @chatmessages.where.not(user_id: current_user.id).update_all(read: true)
    end

    @chatmessage= @chatmessages.order(:created_at)
    @chatmessage = @chatuser.chatmessages.build
  end

  def create
    @chatmessage = @chatuser.chatmessages.build(chatmessage_params)
    if @chatmessage.save
      redirect_back fallback_location: {action: "index"}
    else
      render 'index'
    end
  end

  private
    def chatmessage_params
      params.require(:chatmessage).permit(:body, :user_id)
    end

    def set_user
      @user = User.find_by(id: params[:id])
    end
end
