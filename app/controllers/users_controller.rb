class UsersController < ApplicationController
  before_action :login_required
  before_action :set_user, only: [:edit, :update]
  respond_to :html
  
  def edit
    @user = current_user
  end

  def update
    @user.update(user_params)
    respond_with @user, location: tasks_path
  end

  private
    def user_params
      params.require(:user).permit(:mail)
    end

    def set_user
      @user = User.find(params[:id])
    end
end 
