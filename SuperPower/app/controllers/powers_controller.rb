class PowersController < ApplicationController

    def home
    end

    def index
        @powers = Power.all
    end

    def show
        @power = Power.find(params[:id])
    end

    def new
        @power = Power.new
    end

    def create 
        @power = Power.create(create_power_params)

        redirect_to power_path(@power)
    end

    def edit
        @power = Power.find(params[:id])
    end

    def update
        @power = Power.find(params[:id])
        @power.update(update_power_params)
        redirect_to power_path(@power)
    end

    def destroy
        @power = Power.find(params[:id])
        @power.destroy
        redirect_to powers_path
    end

    private 

    def create_power_params
        params.require(:power).permit(:name, :reason, :rating, :already_exists)
    end

    def update_power_params
        params.require(:power).permit(:reason, :rating)
    end

    
end
