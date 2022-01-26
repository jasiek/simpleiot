class EspEasyController < ApplicationController
  TOKEN = ENV["AUTH_TOKEN"]

  before_action :authenticate
  
  def create
    @record = Record.create!(record_params)
    render status: :created
  end

  def authenticate
    authenticate_or_request_with_http_token do |token, options|
      ActiveSupport::SecurityUtils.secure_compare(token, TOKEN)
    end
  end

  def record_params
    params.require(:record).permit(:value)
  end
end
