require "digest"

class SessionsController < ApplicationController

  def sign_in
    password_md5 = Digest::MD5.hexdigest(params[:password])
    user = User.where(email: params[:email], password: password_md5).first
    if user.present?
      session[:user_id] = user.id
      flash[:notice] = "Welcome!"
    else
      flash[:error] = "Wrong email/password"
    end
    redirect_to "/"
  end

  def sign_out
    session[:user_id] = nil
    redirect_to "/"
  end

  def sign_up

  end

end
