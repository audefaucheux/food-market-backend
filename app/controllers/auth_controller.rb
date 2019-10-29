class AuthController < ApplicationController

  def create
    user = User.find_by(email: login_params[:email])
    if user && user.authenticate(login_params[:password ])
      render json: {token: issue_token({user_id: user.id}), user: UserSerializer.new(user) }
    else 
      render json: {errors: ["Invalid email or password"]}
    end
  end

  private

  def login_params
    params.require(:user).permit(:email, :password )
  end

end
