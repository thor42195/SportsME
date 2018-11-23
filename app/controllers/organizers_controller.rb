class OrganizersController < ApplicationController
  before_action :authenticate_organizer!
  before_action :set_organizer, only:[:index, :show]

  def index
    @events = Event.all
  end

  def show
  end

  private
    def set_organizer
      @organizer = Organizer.find_by(id: params[:id])
    end
end
