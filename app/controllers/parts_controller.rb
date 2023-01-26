class PartsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :part_invalid
    rescue_from ActiveRecord::RecordNotFound, with: :part_not_found

    def index 
        render json: Part.all, status: :ok
    end

    def show 
        part = Part.find(params[:id])
        render json: part, status: 200
    end
    
    def create
        part = Part.create!( part_params )
        render json: part, status: :created
    end

    def update 
        part = Part.find(params[:id])
        part.update!( part_params )
        render json: part, status: 202
    end

    def destroy
        part = Part.find(params[:id])
        part.destroy
        head :no_content
    end


    private

    def part_params
        params.require(:part).permit(
            :component, 
            :make, 
            :model, 
            :material, 
            :size, 
            :metric, 
            :weight, 
            :price, 
            :species
        )
    end

    def part_not_found
        render json: { errors: ['Part not found']}, status: 404
    end

    def part_invalid invalid_part
        render json: {errors: invalid_part.record.errors.full_messages}, status: 422
    end

end
