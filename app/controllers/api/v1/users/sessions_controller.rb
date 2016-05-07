class Api::V1::Users::SessionsController < ApiController
  skip_before_action :authenticate_user
  skip_after_action :verify_authorized #for Pundit
  skip_after_action :verify_policy_scoped #for Pundit

  def create
    user = auth_user_by_email
    if user
      render json: {status: 'SUCCESS', message: nil, data: user}, status: :ok
    end
  end

  private
  def auth_user_by_email
    user = User.find_by_email(user_params[:email])
    puts "user #{user.inspect}"
    if user && user.valid_password?(user_params[:password])
      return user
    end
    return unauthorize
  end

  def user_params
    params.permit(:email, :password)
  end
end
