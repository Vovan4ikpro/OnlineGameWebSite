class HeroesListsController < ApplicationController
  helper HeroesListHelper
  before_action :set_heroes_lists, only: %i[show]

  def index
    @heroes_lists = HeroesList.all
    @heroes_lists = HeroesListsQuery.sort_complexity(@heroes_lists, params[:sort_complex])
    @heroes_lists = HeroesListsQuery.sort_main_stat(@heroes_lists, params[:main_stat])
    @heroes_lists = HeroesListsQuery.search_hero(@heroes_lists, params[:hero_name])
    @sort_complex = params[:sort_complex]
    @main_stat = params[:main_stat]
    @hero_name = params[:hero_name]
  end

  def new
    @heroes_list = HeroesList.new
  end

  def create
    @heroes_list = HeroesList.new(hero_name: heroes_lists_params[:hero_name], hero_statistic_id: heroes_lists_params[:hero_statistic_id], description: heroes_lists_params[:description], hero_picture: heroes_lists_params[:hero_picture])
    if @heroes_list.save
      redirect_to @heroes_list
    else
      @heroes_list = HeroesList.new(hero_name: heroes_lists_params[:hero_name], hero_statistic_id: heroes_lists_params[:hero_statistic_id], description: heroes_lists_params[:description], hero_picture: heroes_lists_params[:hero_picture])
      render :new
    end
  end

  def show

  end

  private

  def set_heroes_lists
    @heroes_list = HeroesList.find(params[:id])
  end

  def heroes_lists_params
    params.require(:heroes_list).permit(:hero_name, :hero_statistic_id, :description, :hero_picture)
  end

end
