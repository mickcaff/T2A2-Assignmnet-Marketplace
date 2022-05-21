class ServicesController < ApplicationController
  include Pagy::Backend
  
  # Services controller is different to the namespaced Provider/Services
  # Services controller relates to the displaying of services on the main search page and the page which shows the individual details of each service.
  def index
    # @pagy, @services = pagy(Service.published, items: 6)

    @q = Service.ransack(params[:q])
    @pagy, @services = pagy(@q.result(distinct: true), items: 9)
  end

  def show
    @service = Service.published.find(params[:id])
  end
end
