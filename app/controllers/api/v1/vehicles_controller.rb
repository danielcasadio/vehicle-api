module Api
  module V1
    class VehiclesController < ApplicationController
      def index
        vehicles = Vehicle.order(title: :desc)
        render json: { status: 'SUCCESS', message: 'Vehicles loaded', data: vehicles }, status: :ok
      end

      def show
        vehicle = Vehicle.find(params[:id])
        if vehicle
          render json: { status: 'SUCCESS', message: 'Vehicle loaded', data: vehicle }, status: :ok
        else
          render json: { status: 'ERROR', message: 'Vehicle does not exist' }, status: :unprocessable_entity
        end
      end

      def create
        vehicle = Vehicle.new(vehicle_params)
        if vehicle.save
          render json: { status: 'SUCCESS', message: 'Vehicle created', data: vehicle }, status: :ok
        else
          render json: { status: 'ERROR', message: 'Cannot create the vehicle.', data: vehicle.errors.messages },
                 status: :unprocessable_entity
        end
      end

      def destroy
        vehicle = Vehicle.find(params[:id])
        if vehicle.destroy
          render json: { status: 'SUCCESS', message: 'Vehicle deleted' }, status: :ok
        else
          render json: { status: 'ERROR', message: 'Cannot delete vehicle' }, status: :unprocessable_entity
        end
      end

      def update
        vehicle = Vehicle.find(params[:id])
        if vehicle.update(vehicle_params)
          render json: { status: 'SUCCESS', message: 'Vehicle updated', data: vehicle }, status: :ok
        else
          render json: { status: 'ERROR', message: 'Cannot update vehicle', data: vehicle.errors.messages },
                 status: :unprocessable_entity
        end
      end

      private

      def vehicle_params
        params.require(:vehicle).permit(:title, :brand, :year, :description, :sold)
      end
    end
  end
end
