class UserFavoritesHerosController < ApplicationController

  def new
    @user_favorites_hero = UserFavoritesHero.new
    @heroes_list = HeroesList.all
  end

  def create
    @user_favorites_hero = UserFavoritesHero.new(favorites_hero_1_id: user_favorites_heros_params[:favorites_hero_1_id], favorites_hero_2_id: user_favorites_heros_params[:favorites_hero_2_id], favorites_hero_3_id: user_favorites_heros_params[:favorites_hero_3_id])
    if @user_favorites_hero.save
      redirect_to @user_favorites_hero
    else
      @user_favorites_hero = UserFavoritesHero.new(favorites_hero_1_id: user_favorites_heros_params[:favorites_hero_1_id], favorites_hero_2_id: user_favorites_heros_params[:favorites_hero_2_id], favorites_hero_3_id: user_favorites_heros_params[:favorites_hero_3_id])
      render :new
    end
  end

  def edit
    @user_favorites_hero = UserFavoritesHero.find(params[:id])
    @heroes_list = HeroesList.all
  end

  def update
    @user_favorites_hero = UserFavoritesHero.find(params[:id])
    if @user_favorites_hero.update(favorites_hero_1_id: user_favorites_heros_params[:favorites_hero_1_id], favorites_hero_2_id: user_favorites_heros_params[:favorites_hero_2_id], favorites_hero_3_id: user_favorites_heros_params[:favorites_hero_3_id])
      redirect_to user_path(current_user)
    else
      @user_favorites_hero = UserFavoritesHero.find(params[:id])
      render :edit
    end
  end
  private

  def user_favorites_heros_params
    params.require(:user_favorites_hero).permit(:favorites_hero_1_id, :favorites_hero_2_id, :favorites_hero_3_id)
  end
end
