class EventsController < ApplicationController
  before_action :set_event, only:[:manage,:show, :edit, :update, :destroy]
  before_action :set_user, only:[:show]
  before_action :set_organizer, only:[:show]
  before_action :set_search, only:[:index,:manage,:search]

  def index
    @events = Event.all
  end

  def search
  end

  def show
    @interest = current_user.interests.find_by(event_id: @event.id)
    @bookmark = current_user.bookmarks.find_by(event_id: @event.id)
    @paticipant = current_user.paticipants.find_by(event_id: @event.id)
    @user_interests = @event.interests.includes(:user).order(:created_at)
    @comments = @event.comments
    @comment = @event.comments.build
  end

  def manage
    @events = Event.all
  end

  def new
    if params[:back]
      @event = Event.new(event_params)
    else
      @event = Event.new
    end
  end

  def confirm
    @event = Event.new(event_params)
    @event.organizer_id = current_organizer.id
    render :new  if @event.invalid?
  end

  def create
    @event = Event.new(event_params)
    @event.organizer_id = current_organizer.id
    if @event.save
       redirect_to current_organizer
    else
      render 'new'
    end
  end

  def edit
    if current_organizer.id != @event.organizer_id
      redirect_back fallback_location: {action: "manage"}
    end
  end

  def update
    if @event.update(event_params)
      redirect_to current_organizer
    else
      render 'new'
    end
  end

  def destroy
    if current_organizer.id != @event.organizer_id
      redirect_back fallback_location: {action: "manage"}
    else
      @event.destroy
      redirect_back fallback_location: {action: "manage"}
    end
  end

  private
    def event_params
      params.require(:event).permit(:title, :content, :image, :image_cache, :number, :day, :starttime, :endtime, :deadline,:created_at,:updated_at)
    end

    def set_event
      @event = Event.find(params[:id])
    end

    def set_user
      @user = User.find_by(id: params[:id])
    end

    def set_organizer
      @organizer = Organizer.find_by(id: params[:id])
    end

    def set_search
      @search = Event.ransack(params[:search])
      @finding = @search.result(distinct: true)
    end
end
