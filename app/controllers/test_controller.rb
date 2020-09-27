class TestController < ApplicationController
  before_action :authenticate_user!
  def index
    render json: {text: "Hello user #{current_user.email}"}
  end
end
