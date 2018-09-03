class AccountActivationsController < ApplicationController
  def edit
    @user = User.find_by(email: params[:email])
    if @user && !@user.activated? && @user.authenticated?(:activation, params[:id])
      @user.activate
      log_in user
      flash[:success] = "Account Successfully Activated - Get ready to LevelUp!"
      redirect_to root_url
    else
      flash[:danger] = "Invalid Account Activation - It's dangerous to go alone - "
      redirect_to root_url
    end
  end
end
