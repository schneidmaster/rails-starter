module ApplicationHelper
  def logged_in?
    @logged_in ||= current_token && current_token.unexpired?
  end

  def current_token
    @current_token ||= Token.find_by(token: cookies.signed[:user_token])
  end

  def current_user
    @current_user ||= current_token.try(:user)
  end
end
