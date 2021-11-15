class FriendsController < ApplicationController
    def index
        @friends = Friend.order(:id).page(params[:page]).per(10)
    end

    def show
        @friend = Friend.find(params[:id])
    end

    def new
    end

    def edit
    end

    def create
    end

    def update
    end

    def destroy
    end

end
