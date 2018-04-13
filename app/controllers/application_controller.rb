class ApplicationController < ActionController::Base
  before_filter :basic

  # （略）

  private
  def basic
    authenticate_or_request_with_http_basic do |user, pass|
      user == 'gs' && pass == 'kodama'
    end
  end
end
