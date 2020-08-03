class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def  new #signupにユーザーが入力した情報 
    @user = User.new
  end

  def create
    #ルーティングが投げたパラメーターがくる。 これをDBに保存したいよって指示。=>モデルにいく
    @user = User.new(user_params)    
    if @user.save
      redirect_to users_path #redirect_toはコントローラにいく 
    else
      render :new #renderはCを介さない
    end 
  end

  def show
  end

  def edit
  end

  def update
  end

private
  
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
