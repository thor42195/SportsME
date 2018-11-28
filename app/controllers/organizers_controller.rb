class OrganizersController < ApplicationController
  before_action :authenticate_organizer!
  before_action :set_organizer, only:[:index, :show]
  before_action :set_search, only:[:index]

  def index
    @events = Event.all
  end

  def show
  end

  private
    def set_organizer
      @organizer = Organizer.find_by(id: params[:id])
    end

    def set_search
      @search = Event.ransack(params[:search])
      @finding = @search.result(distinct: true)
    end
end
