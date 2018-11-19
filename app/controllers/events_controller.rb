class EventsController < ApplicationController
  before_action :set_event, only:[:show, :edit, :update, :destroy]

  def index
    @events = Event.all
    @organizers = Organizer.all
  end

  def show
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
       redirect_to @current_organizer, notice: "新規イベントを作成しました"
    else
      render 'new'
    end
  end

  def edit
    if current_organizer.id != @event.organizer_id
      redirect_to root_path
    end
  end

  def update
    if @event.update(event_params)
      redirect_to event_path, notice:"更新しました"
    else
      render 'new'
    end
  end

  def destroy
    @event.destroy
    redirect_to events_path, notice:"削除しました"
  end

  private
    def event_params
      params.require(:event).permit(:title, :content, :image, :image_cache, :number, :day, :starttime, :endtime, :deadline)
    end

    def set_event
      @event = Event.find(params[:id])
    end

end
