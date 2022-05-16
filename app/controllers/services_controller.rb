class ServicesController < ApplicationController
  include Pagy::Backend
  
  def index
    @pagy, @services = pagy(Service.published, items: 6)
  end

  def show
    @service = Service.published.find(params[:id])
  end
end
