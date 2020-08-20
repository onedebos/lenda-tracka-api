class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
      render json:{
        users: @users
       }
    end
    
    def create
      user = User.create!(
        username: params[:username],
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
