require 'rails_helper'

RSpec.describe VersionListsController, type: :controller do
  describe 'GET #index' do
    it 'assigns all versions to @versions' do
      version_list1 = VersionList.create(version_number: '1.0', change_information: 'Some changes')
      version_list2 = VersionList.create(version_number: '2.0', change_information: 'More changes')

      get :index

      expect(assigns(:versions)).to eq([version_list1, version_list2])
    end

    it 'assigns average_grade to 0' do
      get :index

      expect(assigns(:average_grade)).to eq(0)
    end

    it 'renders the index template' do
      get :index

      expect(response).to render_template(:index)
    end
  end

  describe 'GET #new' do
    it 'assigns a new VersionList to @version_list' do
      get :new

      expect(assigns(:version_list)).to be_a_new(VersionList)
    end

    it 'renders the new template' do
      get :new

      expect(response).to render_template(:new)
    end
  end

end
