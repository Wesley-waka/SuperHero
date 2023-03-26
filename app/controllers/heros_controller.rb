class HerosController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index 
        heros = Hero.all 
        render json: heros, status: :created
    end

    def show
        hero = Hero.find(params[:id])
        render json: hero, status: :created, include: :powers
    end

    def destroy 
        hero = find_hero
        hero.destroy
        head :no_content
    end

    private

    def find_hero
        Hero.find(params[:id])
    end
    

    def render_not_found_response
        render json: { error: "Hero not found" }, status: :not_found
    end



end