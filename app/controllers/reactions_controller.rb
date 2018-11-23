class ReactionsController < ApplicationController

  def index
    @users = current_user.matchers
  end

  def create
    @reactions = current_user.active_relationships.new(create_params)
    if @reactions.save
      @follower_user = current_user
      @following_user = User.find(params["following_id"])
      @matching = @following_user.following?(current_user)
    else
      render :template => "users/show"
    end
  end

  def destroy
    reaction =  Reaction.find(params[:id])
    reaction.destroy
    redirect_to controller: 'users', action: 'index'
  end

  private
    def create_params
      params.permit(:following_id)
    end

end
