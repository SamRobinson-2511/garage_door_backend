class UsersController < ApplicationController
    


    def show 
        user = User.find(params[:id])
        render json: user, status: :ok
    end

    def create
        user = User.create!(user_params)
        render json: user, status: :created
    end

    def login #this will be adjusted in cookies/following lecture video
        user = User.find_by(user_name: params[:user_name])
        if user && user.authenticate(params[:password])
            render json: user, status: :ok
        else
            render json: {errors: "Incorrect username or password"}, status: 401
        end
    end

    private 

    def user_params
        params.permit(:first_name, :last_name, :user_name, :email, :password)
    end


end
