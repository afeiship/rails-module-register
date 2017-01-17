class UsersController < ApplicationController
  def signup
    @user = User.new
  end

  def create
    # render plain: params.inspect
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render :signup
    end
  end

  def index
    @users = User.all
  end

  private
    def user_params
      params.require(:user).permit!
    end
end
