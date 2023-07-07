require 'rails_helper'

RSpec.describe UserFavoritesHerosController, type: :controller do
  describe 'GET #new' do
    it 'assigns a new UserFavoritesHero to @user_favorites_hero' do
      get :new

      expect(assigns(:user_favorites_hero)).to be_a_new(UserFavoritesHero)
    end

    it 'renders the new template' do
      get :new

      expect(response).to render_template(:new)
    end
  end

  describe 'POST #create' do

    context 'with invalid parameters' do
      it 'does not create a new UserFavoritesHero' do
        expect {
          post :create, params: { user_favorites_hero: { favorites_hero_1_id: nil, favorites_hero_2_id: 2, favorites_hero_3_id: 3 } }
        }.not_to change(UserFavoritesHero, :count)
      end

      it 're-renders the new template' do
        post :create, params: { user_favorites_hero: { favorites_hero_1_id: nil, favorites_hero_2_id: 2, favorites_hero_3_id: 3 } }

        expect(response).to render_template(:new)
      end
    end
  end
end
