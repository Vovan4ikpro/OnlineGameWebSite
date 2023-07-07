require 'rails_helper'

RSpec.describe HeroesListsController, type: :controller do

  describe 'GET #new' do
    it 'assigns a new HeroesList to @heroes_list' do
      get :new

      expect(assigns(:heroes_list)).to be_a_new(HeroesList)
    end

    it 'renders the new template' do
      get :new

      expect(response).to render_template(:new)
    end
  end


end
