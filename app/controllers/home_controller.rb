class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @loc = Location.all
    @Item = Item.all
  end

end
