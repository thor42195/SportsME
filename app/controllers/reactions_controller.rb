class ReactionsController < ApplicationController
  before_action :authenticate_user!

  def index
  end
  
  def create
    @user = User.find(params[:reaction][:followed_id])
    current_user.follow!(@user)
    @user
  end

  def destroy
    @user = Reaction.find(params[:id]).followed
    current_user.unfollow!(@user)
    @user
  end

end
