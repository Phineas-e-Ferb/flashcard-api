class UsersController < ApplicationController
    before_action :set_user, only: %i[ show ]

    def index
        @user = User.all
        render json: @user
    end

    def show
        render json: {username: @user.username}
    end

    def create
        params = user_params
        @user = User.new({ username: params[:username] })
        @user.password = params[:password]
        if @user.save
            render json: { message: "User was created" }
        end
    end

    private
    def set_user
        @user = User.find(params[:id])
    end

    def user_params
        params.permit(:username, :password)
    end
end
