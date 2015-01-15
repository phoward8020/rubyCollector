class UsersController < ApplicationController

  def index
  end

  def show
  end

  def edit
  end

  def new
  end

  def create
    @user = User.new(user_params)
    @user.save

    if @user.errors.any?
      #fail
      flash[:danger] = "Could not create account."
      render :new
    else
      #win
      flash[:sucess] = "Account created. Please login."
      redirect_to :login
    end

  end

  def destory
  end

  private
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end

end