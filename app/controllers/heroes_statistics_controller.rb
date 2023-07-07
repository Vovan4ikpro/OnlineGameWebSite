class HeroesStatisticsController < ApplicationController
  # before_action :set_heroes_statistics, only: %i[show]
  #
  # def new
  #   @heroes_statistic = HeroesStatistic.new
  # end
  #
  # def create
  #   @heroes_statistic = Library.new(hero_type_id: library_params[:hero_type_id], complexity: library_params[:complexity], attack_type_id: library_params[:attack_type_id],hero_attributes_id: library_params[:hero_attributes_id], attack: library_params[:zip_code], image: library_params[:image])
  #   if @heroes_statistic.save
  #     redirect_to @heroes_statistic
  #   else
  #     @heroes_statistic = Library.new(name: library_params[:name], location: library_params[:location], year_of_creation: library_params[:year_of_creation], image: library_params[:image])
  #     render :new
  #   end
  # end
  #
  # def show
  #
  # end
  #
  # private
  #
  # def set_heroes_statistics
  #   @heroes_statistic = HeroesStatistic.find(params[:id])
  # end
  #
  # def heroes_statistics_params
  #   params.require(:library).permit(:name, :location, :year_of_creation, :street_address, :zip_code, :image)
  # end
end
