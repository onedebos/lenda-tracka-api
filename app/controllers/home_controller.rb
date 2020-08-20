class HomeController < ApplicationController
  def index
    render json:{
      "hey": "it's working!"
    }
  end
end
