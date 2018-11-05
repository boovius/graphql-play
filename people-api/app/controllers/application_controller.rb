class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  #
  def query
    result = Schema.execute(
      params[:query]
    )
    render json: result
  end
end
