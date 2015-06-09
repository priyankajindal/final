class UsersController < ApplicationController

skip_before_action :auth, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.create(params["user"])
    if @user.valid?
      redirect_to root_url
    else
      render "new"
    end
  end

end
