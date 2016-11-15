class UsersController < ApplicationController
  before_action :get_user, only: [:destroy, :edit, :update]

  def index
    render :json => User.all, status: 200
  end

  def create
    user = User.create(user_params)

    if user.valid?
      render :json => user, status: 201
    else
      head 400
    end
  end

  def edit
  end

  def update
    @user.update_attributes(user_params)
    if @user
      render :json => {success: "User updated successfully"},
      status: 204
    else
      render :json => {error: "Failed to update"},
      status: 400
    end
  end

  def destroy
    @user.destroy

    if @user.destroyed?
      render :json => {success: "User destroyed successfully"},
      status: 200
    else
      render :json => {error: "User not destroyed"},
      status: 400
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :email)
  end

  def get_user
    @user = User.find(params[:id])
  end

end
