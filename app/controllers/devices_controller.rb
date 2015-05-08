class DevicesController < ApplicationController

  def index
    @devices = Device.all
  end

  def new
    @device = Device.new
  end

  def create
  	#Parameters: { "device" => {"name" => "Xyz"}}
  	#Device.create(params["device"])
    @device = Device.new
    @device.name = params["device"]["name"]
    @device.save
  	redirect_to devices_url
  end

  def edit
  	@device = Device.find_by(id: params["id"])
  end

  def update
 	#Device.find_by(id: params["id"]).update(params["device"])
 	 @device = Device.find_by(id: params["id"])
 	  @device.name = params["device"]["name"]
 	  @device.save
 	redirect_to devices_url
  end

  def destroy
  	@device = Device.find_by(id: params["id"])
  	@device.destroy
  	redirect_to devices_url
  end


end