
class PowersController < ApplicationController
    def index
        render json: Power.all
    end

    def show
        power = Power.find_by(id: params[:id])
        if power
            render json: power
        else  
            render json: {error: "Power not found"}, status:
            :not_found
        end
    end

    def update
        power = Power.find_by(id: params[:id])
        if power
            power.update(power_params)
            render json: power
        else  
            render json: {error: "Power not found"}, status:
            :not_found   
        end 
    end

    private

    def power_params
        params.permit(:name, :description)
    end
    
end
