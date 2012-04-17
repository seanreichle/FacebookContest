class UsersController < ApplicationController
  
  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @project.save
      redirect_to @user, notice: 'User was successfully created.' 
    else
      render action: "new"
    end
  end

  def show
  end
end
