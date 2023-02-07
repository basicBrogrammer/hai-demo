class ApplicationController < ActionController::Base
  def current_user
    User.last
  end

  def context
    { current_user: current_user }
  end
end
