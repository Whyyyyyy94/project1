class GymplansController < ApplicationController
    def index
        @gymplans = Gymplan.all
    end
    def new
        @gymplan = Gymplan.new
    end 
    def create
        gymplan = Gymplan.create gymplan_params
        redirect_to gymplan
    end
    def show
        @gymplan = Gymplan.find params[:id]
    end
    def edit
        @gymplan = Gymplan.find params[:id]
    end
    
    def update
        gymplan = Gymplan.find params[:id]
        gymplan.update gymplan_params
        redirect_to gymplan
    end
    def destroy
        gymplan = Gymplan.find params[:id]
        gymplan.destroy
        redirect_to gymplans_path
    end


    private
    def gymplan_params
    params.require(:gymplan).permit(:day, :focus, :image, :supplement_ids => [])
    end
end