module SessionsHelper
  def login_required
    current_user || access_denied
  end

  def access_denied
    redirect_to login_url, notice: "login required"
  end
end
