class UsersController < ApplicationController
  before_action :set_user, only:[:index, :show, :interests, :bookmarks, :paticipants, :followers]
  before_action :set_reaction, only:[:index,:followers]

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

  def followers
    @matchers = current_user.matchers
    @following = @user.following
    @follower = @user.followers
  end
  private
    def set_user
      @user = User.find_by(id: params[:id])
    end

    def set_reaction
      @reaction = Reaction.new
    end
end
