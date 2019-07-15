class ApplicationController < ActionController::Base
  before_action :ensure_json_request  
  protect_from_forgery unless: -> { request.format.json? }
  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found

  def record_not_found
    render json: 'record_not_found'.to_json
  end

def ensure_json_request  
  return if request.format == :json
  render :nothing => true, :status => 406  
end  
end
