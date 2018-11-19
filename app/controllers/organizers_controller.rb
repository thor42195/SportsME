class OrganizersController < ApplicationController
  before_action :set_organizer, only:[:index, :show]

  def index
    @events = Event.all
    @manage = @events.all.find_by(id: current_organizer.id)
  end

  def show
  end

  private
    def set_organizer
      @organizer = Organizer.find_by(id: params[:id])
    end
end
