class GaragesController < ApplicationController

    
    def index 
        render json: Garage.all, status: :ok
    end
    
    def show
        g = Garage.find(params[:id])
        render json: g, status: 200
    end

    def create
        g = Garage.create!( garage_params ) 
        render json: g, status: :created
    end

    
    private 

    def garage_params
        params.require(:garage).permit(
            :user_id, 
            :bicycle_id
        )
    end

end
