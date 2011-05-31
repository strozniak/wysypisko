class UsersController < ApplicationController
<<<<<<< HEAD
  def show
    @user = User.find(params[:id])
    @title = @user.name
  end

  def new
    @title = "Zarejestruj sie"
  end
=======
  
    def show
        @user = User.find(params[:id])
          end

            def new
                @title = "Sign up"
                  end
                  end
>>>>>>> modeling-users

