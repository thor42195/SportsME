class UsersController < ApplicationController
  before_action :set_user, only:[:index, :show, :interests, :bookmarks, :paticipants]
  
  def index
  end

  def show
  end

  def interests
    @interests_event = @user.interest_event
  end

  def bookmarks
    @bookmarks_event = @user.bookmark_event
  end

  def paticipants
    @paticipants_event = @user.paticipant_event
  end

  private
    def set_user
      @user = User.find_by(id: params[:id])
    end
end
