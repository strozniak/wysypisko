class SessionsController < ApplicationController
  def new
    @title = "Logowanie"
  end

  def create
    user = User.authenticate(params[:session][:email],
                             params[:session][:password])
    if user.nil?
        flash.now[:error] = "Nieporawny login lub haslo."
        @title = "Logowanie"
        render 'new'
    else
        sign_in user
        redirect_back_or user
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end

end
