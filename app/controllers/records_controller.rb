class RecordsController < ApplicationController
  TOKEN = ENV["AUTH_TOKEN"]

  before_filter :authenticate, except: [ :index ]
  
  def index
    @records = Record.today
  end

  def create
    
  end

  def authenticate
    authenticate_or_request_with_http_token do |token, options|
      ActiveSupport::SecurityUtils.secure_compare(token, TOKEN)
    end
  end
end
