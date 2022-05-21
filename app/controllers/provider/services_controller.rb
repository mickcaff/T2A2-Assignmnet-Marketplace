class Provider::ServicesController < ApplicationController
  
  # These actions relate to the provider/services views -> 
  # namespacing was used to distinguish between views which just providers have access
  
  def new
    @service = Service.new
  end

  def create
    begin
      @service = current_user.services.new(service_params)
      @service.save!
      redirect_to provider_service_path(@service)
    rescue
      flash.now[:alert] = @service.errors.full_messages.join('<br>')
      render 'new'
    end
  end
  
  def edit
    @service = current_user.services.find(params[:id])
  end

  def update
    begin
      @service = current_user.services.find(params[:id])
      @service.update!(service_params)
      redirect_to provider_service_path(@service)
    rescue
      flash.now[:alert] = @service.errors.full_messages.join('<br>')
      render 'edit'
    end
  end
  
  def index
    @services = current_user.services.all
  end

  def show
    @service = current_user.services.find(params[:id])
  end

  def destroy
    @service = current_user.services.find(params[:id])
    @service.destroy
    # @service.update(status: :archived)
    redirect_to provider_services_path
  end

  private

  def service_params
    return params.require(:service).permit(
      :title,   
      :about,
      :address_line1,
      :address_line2,
      :city,
      :state,
      :postal_code,
      :country, 
      :cover_image,
      :price, 
      :price_unit, 
      :additional_charges,
      :lat,
      :lng,
      :status
    )
  end

end
