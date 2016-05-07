class Api::V1::UsersController < ApiController
  def index
    users = policy_scope(User)
    authorize users
    render json: {status: 'SUCCESS', message: nil, data: users}, status: :ok
  end
end
