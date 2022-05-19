class BasePagesController < ApplicationController
  layout "marketing"
  
  def home
    @services = Service.all
  end
end
