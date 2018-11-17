class OrganizersController < ApplicationController
  def show
    @organizer = Organizer.find_by(id: params[:id])
  end
end
