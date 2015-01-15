class SessionsController < ApplicationController

  def new
    # render plain: "Routed to 'sessions#new'"
  end

  def create
    # render plain: "Routed to 'sessions#create'"
    @user = User.authenticate(params[:user][:email], params[:user][:password])

    if @user
      session[:user_id] = @user.id
      flash[:success] = "Welcome, fellow collector."
      redirect_to root_path
    else
      flash[:danger] = "Login Failed."
      render :new
    end

  end

  def destroy
    # render plain: "Routed to 'sessions#destroy'"
    session = nil
    flash[:warning] = "Logged Out."
    redirect_to login_path
  end

end