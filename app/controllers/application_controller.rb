class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  protect_from_forgery with: :null_session, only: proc { |c| c.request.format.json? }
end
