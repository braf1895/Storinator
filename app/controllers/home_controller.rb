class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
  end
  @locations = Locations.all
end
