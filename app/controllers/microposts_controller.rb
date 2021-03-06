class MicropostsController < ApplicationController
  before_filter :authenticate
  before_filter :authorized_user, :only => :destroy
  
  def create
    @micropost  = current_user.microposts.build(params[:micropost])
    @micropost.likes = 0
    if @micropost.save
      flash[:success] = "Utworzono wpis!"
      redirect_to root_path
    else
      @feed_items = []
      render 'pages/main'
    end
  end

  def destroy
    @micropost.destroy
    redirect_back_or root_path
  end
	
  def add_like
    @micropost.likes += 1
  end

  private

    def authorized_user
      @micropost = Micropost.find(params[:id])
      redirect_to root_path unless current_user?(@micropost.user)
    end
end
