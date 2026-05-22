class UsersController < ApplicationController
before_action :authenticate_user!
  def index
    @created = current_user.created_events
  end

  def show
    @user = current_user
  end
end
