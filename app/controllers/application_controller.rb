class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  around_action :catch_halt

  before_action :authenticate!, unless: :pages_controller?
  check_authorization unless: :pages_controller?

  rescue_from CanCan::AccessDenied do |_exception|
    catch :halt do
      render_unauthenticated
    end
  end

  def render(*args)
    super
    throw :halt
  end

  def redirect_to(*args)
    super
    throw :halt
  end

  protected

  def catch_halt
    catch :halt do
      yield
    end
  end

  def current_token
    @current_token ||= Token.find_by(token: session[:user_token])
  end

  def current_user
    @current_user ||= current_token.try(:user)
  end

  def render_unauthenticated!(_error = nil)
    redirect_to root_path, alert: 'Permission denied'
  end

  private

  def authenticate!
    token = Token.find_by(token: session[:user_token])
    render_unauthenticated! unless token && token.unexpired?
  end

  def pages_controller?
    is_a?(HighVoltage::PagesController)
  end
end
