class Api::UsersController < ApplicationController
    before_action :find_user, except: [:index, :create]

    def index 
        @users = User.all 
        render json: @users
    end

    def show
        render json: @user
    end

    def create
        @user = User.create(user_params)
        render json: @user
    end

    def update
        @user.update(user_params)
        render json: @user
    end

    def destroy
        @user.destroy
        render json: @user
    end

    private

    def user_params
        params.permit(:username, :aspiration)
    end

    def find_user
        @user = User.find(params[:id])
    end

end