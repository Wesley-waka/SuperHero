class PowersController < ApplicationController
    def index 
        powers = Power.all 
        render json: powers
    end
    
end