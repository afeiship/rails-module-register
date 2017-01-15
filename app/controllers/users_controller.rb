class UsersController < ApplicationController
  def signup
    @user = User.new
  end

  def create
    # render plain: params.inspect
    user = User.create(user_params)
    user.save
    redirect_to :root
  end

  def show
    
  end

  private
    def user_params
      params.require(:user).permit!
    end
end
