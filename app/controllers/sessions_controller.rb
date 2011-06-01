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
        redirect_to user
    end
  end

  def destroy
  end

end
