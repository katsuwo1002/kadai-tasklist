class UsersController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  #訂正前　before_action :require_user_logged_in, only: [:index, :show]
  #訂正前　def index と　def show の記載あり
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:success] = 'ユーザを登録しました。'
      redirect_to root_path #訂正前@user
    else
      flash.now[:danger] = 'ユーザの登録に失敗しました。'
      render :new
    end
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
