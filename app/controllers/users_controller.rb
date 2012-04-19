class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      UserMailer.send_contest_mail(@user).deliver
      redirect_to @user, notice: 'User was successfully created.' 
    else
      render action: "new"
    end
  end

  def show
    @user = User.find(params[:id])
  end
  
private
  def rediect
    redirect_to "/users/new"
  end
end
