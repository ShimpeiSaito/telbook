class TelephonesController < ApplicationController
  def index
    @friend = Friend.find(params[:id])
    if params[:friend_id]
      @telephones = @friend.telephones
    end

    @telephone = Telephone.new
  end

  def create
    @friend = Friend.find(params[:telephone][:friend_id])
    @telephone = Telephone.new(params[:telephone])
    if @telephone.save
        redirect_to @friend, notice: "電話番号を登録しました。"
    else
        render "index"
    end
  end

  def destroy
    @telephone = Telephone.find(params[:id])
    @friend = Friend.find(@telephone.friend_id)
    @telephone.destroy
    redirect_to @friend, notice: "電話番号を削除しました。"
  end
end
