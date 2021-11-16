class FriendsController < ApplicationController
    def index
        @friends = Friend.order(:id).page(params[:page]).per(5)
    end

    def show
        @friend = Friend.find(params[:id])
        redirect_to controller: :telephones, action: :index, id: @friend.id
    end

    def new
        @friend = Friend.new
        render :edit
    end

    def edit
        @friend = Friend.find(params[:id])
    end

    def create
        @friend = Friend.new(params[:friend])
        if @friend.save
            redirect_to :friends, notice: "友達を登録しました。"
        else
            render "edit"
        end
    end

    def update
        @friend = Friend.find(params[:id])
        @friend.assign_attributes(params[:friend])
        if @friend.save
            redirect_to :friends, notice: "友達を更新しました。"
        else
            render "edit"
        end
    end

    def destroy
        @friend = Friend.find(params[:id])
        @friend.destroy
        redirect_to :friends, notice: "友達を削除しました。"
    end

end
