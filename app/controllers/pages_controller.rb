class PagesController < ApplicationController
  def main
    @title = "Glowna"
  end

  def add
    @title = "Dodaj zawartosc"
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

  def help
    @title = "Pomoc"
  end

end
