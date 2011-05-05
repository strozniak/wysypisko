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

  def stats
    @title = "Statystyki"
  end

end
