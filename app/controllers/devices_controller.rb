class DevicesController < ApplicationController
	def new
	end

	def create
		@device = Device.new(params.require(:device).permit(:lat, :long, :name))
		@device.save
		redirect_to @device
	end

	def show
		@device = Device.find(params[:id])
	end

	def index
		@devices = Device.all
	end
end
