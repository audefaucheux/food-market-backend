class UsersController < ApplicationController

  def index
    render json: User.all
  end

  def create
    user = User.create(user_params)
    if user.valid?
      render json: {token: issue_token({user_id: user.id}), user: UserSerializer.new(user) }
    else 
      render json: {errors: user.errors.full_messages}
    end
  end 

  private 

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
  
end
