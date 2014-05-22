class UsersController < ApplicationController
  before_action :login_required
  
  def edit
    @user = current_user
  end

  def update
  end
end 
