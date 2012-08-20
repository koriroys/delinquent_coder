class SessionsController < ApplicationController
  def create
    session[:github] = request.env['omniauth.auth']
    flash[:notice] = "Success! You are now logged in with github, #{session[:github][:info][:name]}."
    redirect_to home_path
    #render json: session[:github]
  end

  def destroy
    reset_session
    flash[:notice] = 'You are now logged out.'
    redirect_to home_path
  end
end
