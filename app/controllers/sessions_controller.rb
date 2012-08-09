class SessionsController < ApplicationController
  def create
    session[:github] = request.env['omniauth.auth']
    render json: session[:github]
  end
end
