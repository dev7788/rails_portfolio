class PasswordsController < ApplicationController
  before_filter :authenticate_user!

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      sign_in(@user, :bypass => true)
      redirect_to root_path, :notice => "Password updated!"
    else
      render :edit
    end
  end
end
