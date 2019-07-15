class ApplicationController < ActionController::Base
  before_action :ensure_json_request  
  protect_from_forgery unless: -> { request.format.json? }

def ensure_json_request  
  return if request.format == :json
  render :nothing => true, :status => 406  
end  
end
