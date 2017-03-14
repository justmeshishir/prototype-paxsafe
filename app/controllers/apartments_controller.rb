class ApartmentsController < ApplicationController
	def index
		@apartments = Apartment.all
	end

	def create
		@apartment = Apartment.create(apartment_params)
		redirect_to root_path
	end

	def edit
		@apartment = Apartment.find(params[:id])
	end

	def new

	end

	def destroy

	end

	private

	def apartment_params
		params.require(:apartment).permit(:name, :address, :rate, :description, :access_token)
	end
end
