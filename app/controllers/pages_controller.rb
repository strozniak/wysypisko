class PagesController < ApplicationController
  def main
    @title = "Glowna"
     if signed_in?
  #    @micropost = Micropost.new
      @feed_items = current_user.feed.paginate(:page => params[:page])
     else 
  #     @micropost = Micropost.new
       @feed_items = Micropost.all.paginate(:page => params[:page])
    end
  end

  def add
    @title = "Dodaj zawartosc"
     if signed_in?
      @micropost = Micropost.new
      @feed_items = current_user.feed.paginate(:page => params[:page])
    end
  end

  def register
    @title = "Rejestracja"
  end

  def top
    @title = "Top"
  end

  def random
    @title = "Losowa"
  end

  def about
    @title = "O autorze"
  end

  def contact
    @title = "Kontakt"
  end

end
