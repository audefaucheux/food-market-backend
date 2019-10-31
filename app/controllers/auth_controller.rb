class AuthController < ApplicationController

  def create
    user = User.find_by(email: login_params[:email])
    if user && user.authenticate(login_params[:password ])
      render json: {token: issue_token({user_id: user.id}), user: UserSerializer.new(user) }
    else 
      render json: {errors: ["Invalid email or password"]}
    end
  end

  def validate
    if @current_user
      render json: {token: issue_token({user_id: @current_user.id}), user: UserSerializer.new(@current_user) }
    else
      render json: {errors: ["User not found "]}
    end
  end

  private

  def login_params
    params.require(:user).permit(:email, :password )
  end

end
