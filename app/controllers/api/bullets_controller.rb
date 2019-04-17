class Api::BulletsController < ApplicationController
    before_action :find_bullet, except: [:index, :create]

    def index 
        @bullets = Entry.all 
        render json: @bullets
    end

    def show
        render json: @bullet
    end

    def create
        @bullet = Entry.create(bullet_params.merge({date: Time.now}))
        render json: @bullet
    end

    def update
        @bullet.update(bullet_params)
        render json: @bullet
    end

    def destroy
        @bullet.destroy
        render json: @bullet
    end

    private

    def bullet_params
        params.permit(:priorities, :gratitude, :accomplishments, :improvements, :date, :img_url, :user_id)
    end

    def find_bullet
        @bullet = Entry.find(params[:id])
    end

end