class BicyclesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :bicycle_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :bicycle_invalid


    def index
        render json: Bicycle.all, status: :ok
    end

    def show
        b = Bicycle.find(params[:id])
        render json: b, status: 200
    end

    def create
        b = Bicycle.create!( bicycle_params ) 
        render json: b, status: 201
    end

    def update
        b = Bicycle.find(params[:id])
        b.update!( bicycle_params )
        render json: b, status: 202
    end

    def destroy
        b = Bicycle.find(params[:id])
        b.destroy
        head :no_content
    end

    private

    def bicycle_params
        params.require(:bicycle).permit(
            :name, 
            :species, 
            :frame, 
            :fork, 
            :handlebars, 
            :bar_tape, 
            :wheel, 
            :tire, 
            :headset, 
            :stem, 
            :cranks, 
            :pedals, 
            :seatpost, 
            :saddle, 
            :brake, 
            :shifter, 
            :front_d, 
            :back_d, 
            :chain, 
            :image_url,
            :created_at, 
            :updated_at
        )
    end

    def bicycle_not_found
        render json: { errors: ['Bicycle not found']}, status: 404
    end

    def bicycle_invalid invalid_bicycle
        render json: { errors: invalid_bicycle.record.errors.full_messages }, status: 422
    end

end
