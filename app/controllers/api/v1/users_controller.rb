class Api::V1::UsersController < ApplicationController
  def index
  end
    
  def create
    user = User.create!(
      email: params[:email],
      password: params[:password]
    )

    if user
      render json: {
        user: {
          id: user.id,
          username: user.username
        }
      }, status: 201
    else
        render status: 422
    end
  end

  def home
    render json: {
     "hey": "it's working"
    }
  end
end
