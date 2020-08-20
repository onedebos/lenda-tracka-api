class Api::V1::LendersController < ApplicationController
    # create a new user only if user doesn't exist
    def create
      user = Lender.find_by_email(params[:email])
      

      if !user.nil?
        render json: {
          lender: user
        }, status: 200
      else
        lender = Lender.create!(
            name: params[:name],
            email: params[:email],
            avatar: params[:avatar]
        )
        render json: {
            lender: lender
        }, status: 201
      end
    end

  private
    def lender_params
     params.permit(:name, :email, :avatar)
    end
end
