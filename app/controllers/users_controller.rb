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
      flash[:done] = "User created"
      redirect_to users_path
    else
      flash[:error] = @user.errors.full_messages.join(',')
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:done] = "User updated"
      redirect_to users_path
    else
      flash[:error] = @user.errors.full_messages.join(',')
      redirect_to edit_user_path(@user)
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      flash[:done] = "User deleted"
    else
      flash[:error] = "Could not delete user"
    end
    redirect_to users_path
  end
end
