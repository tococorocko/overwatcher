class HeroesController < ApplicationController
  def index
    @heroes = Hero.all
    if params[:search]
      @heroes = Hero.search(params[:search]).order("name ASC")
    else
      @heroes = Hero.all.order('name ASC')
    end
  end
end
