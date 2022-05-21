class BasePagesController < ApplicationController
  layout "marketing"
  
  # BasePages is used as the controller for the root marketing page
  def home
    @services = Service.all
  end
end
