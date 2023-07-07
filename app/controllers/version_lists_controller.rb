class VersionListsController < ApplicationController
  before_action :set_version_lists, only: %i[show]

  def index
    @versions = VersionList.all
    @average_grade = 0
  end

  def new
    @version_list = VersionList.new
  end

  def create
    @version_list = VersionList.new(version_number: version_lists_params[:version_number], change_information: version_lists_params[:change_information], image: version_lists_params[:image])
    if @version_list.save
      redirect_to @version_list
    else
      @version_list = VersionList.new(version_number: version_lists_params[:version_number], change_information: version_lists_params[:change_information], image: version_lists_params[:image])
      render :new
    end
  end

  def show
    @average_grade = 0
  end

  private

  def set_version_lists
    @version_list = VersionList.find(params[:id])
  end

  def version_lists_params
    params.require(:version_list).permit(:version_number, :change_information, :image)
  end

end
