class UserMoreInfosController < ApplicationController

  def show
    @user = current_user
  end

  def new

  end

  def create
    favorites_heroes = UserFavoritesHero.create(favorites_hero_1_id: 1, favorites_hero_2_id: 1, favorites_hero_3_id: 1)
    @user_more_info = UserMoreInfo.new(user_id: current_user.id, favorites_heroes_id: favorites_heroes.id, rating: user_more_infos_params[:rating], grade: user_more_infos_params[:grade],review: user_more_infos_params[:review], version_id: VersionList.last.id)
    if @user_more_info.save
      redirect_to edit_user_favorites_hero_path(favorites_heroes)
    else
      @user_more_info = UserMoreInfor.new(favorites_hero_1_id: user_favorites_heros_params[:favorites_hero_1_id], favorites_hero_2_id: user_favorites_heros_params[:favorites_hero_2_id], favorites_hero_3_id: user_favorites_heros_params[:favorites_hero_3_id])
    end
  end

  private

  def user_more_infos_params
    params.require(:user_more_info).permit(:user_id, :favorites_heroes_id, :rating, :grade, :review, :version_id)
  end
end
