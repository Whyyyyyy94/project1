class SupplementsController < ApplicationController
    def index
        @supplements = Supplement.all
    end
    def show
        @supplement = Supplement.find params[:id]
    end
    def new
        @supplement = Supplement.new
    end
    def create
        supplement = Supplement.create supplement_params
        redirect_to supplement
    end
    def edit
        @supplement = Supplement.find params[:id]
    end
    def update
        supplement = Supplement.find params[:id]
        supplement.update supplement_params
        redirect_to supplement
    end
    def destroy
        supplement = Supplement.find params[:id]
        supplement.destroy
        redirect_to supplements_path
    end

private
def supplement_params
    params.require(:supplement).permit(:name, :intakedirection, :effects, :gymplan_ids  => [])
end
end
