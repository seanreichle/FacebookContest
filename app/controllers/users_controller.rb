class UsersController < ApplicationController
  
  def index
    @users = User.all
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
  
  def list
    @user = User.all
  end
end
