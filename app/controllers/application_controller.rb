class ApplicationController < ActionController::Base
  http_basic_authenticate_with :name => "gs", :password => "kodama" if Rails.env == "production"
end
