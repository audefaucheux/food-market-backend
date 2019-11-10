class UsersController < ApplicationController

  def index
    render json: User.all
  end

  def show
    render json: User.find(params[:id])
  end

  def create
    user = User.create(user_params)
    if user.valid?
      render json: {token: issue_token({user_id: user.id}), user: UserSerializer.new(user) }
    else 
      render json: {errors: user.errors.full_messages}
    end
  end 

  def update
    user = User.find(params[:id])
    if user && user.authenticate(user_params[:current_password]) #&& user_params[:passowrd] == user_params[:passowrd_confirmation])
      if user_params[:password] && user_params[:password] == user_params[:password_confirmation]
        user.update(password: user_params[:password])
        render json: {success: ["Password updated successfully"]}
      else
        render json: {errors: ["New password and new password confirmation don't match"]}
      end
    else 
      render json: {errors: ["Current password Invalid"]}
    end
  end

  private 

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :current_password)
  end
  
end
