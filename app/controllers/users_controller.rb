class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @title = "Zarejestruj sie"
  end

end
