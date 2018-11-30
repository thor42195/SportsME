class CommentsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def show
  end

  def create
    @event = Event.find(params[:event_id])
    @comment = @event.comments.build(comment_params)
    @comment.user_id = current_user.id
    # クライアント要求に応じてフォーマットを変更
    respond_to do |format|
      if @comment.save
        format.js { render :index }
      else
        format.html { redirect_back(fallback_location: events_path) }
      end
    end
  end

  private

  def comment_params
    params.required(:comment).permit(:user_id, :event_id, :content)
  end
end
