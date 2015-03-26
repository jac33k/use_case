class ApplicationController < ActionController::API

  private
  def render_error(message, status_code = :unprocessable_entity)
    render_json(message, status_code)
  end
end
