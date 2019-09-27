class TripsController < ApplicationController
    before_action :set_trip, only: [:show, :update, :destroy]
    
    def index
        @trips =Trip.all
    end

    def show
    end

    def create
        @trip = Trip.new(trip_params)
        if @trip.save
            render :show, status: :created, location: @trip
        else
            render json: @trip.errors, status: :unprocessable_entity
        end
    end

    def update
        if @trip.update(trip_params)
            render :show, status: :ok, location: @trip
        else
            render json: @trip.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @trip.destroy
    end
       
    private
    def set_trip
        @trip = Trip.find(params[:id])
    end
    def trip_params
        params.require(:trip).permit(:start, :end, :stops, :seats, :price)
    end
    
end
