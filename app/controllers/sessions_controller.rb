class SessionsController < ApplicationController

    def create
        user = user.find_by(user_name: params[:user_name])
        if user&.authenticate(params[:password])
            session[:user_id] = user.id
            render json: user, status: :ok
        else
            render json {errors: "Incorrect username or password"}, status: 401
        end
    end








end
