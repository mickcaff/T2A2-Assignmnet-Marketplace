class ServicesController < ApplicationController
  def index
    @services = Service.published
  end

  def show
    @service = Service.published.find(params[:id])
  end
end
