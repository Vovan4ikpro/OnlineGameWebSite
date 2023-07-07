class CreateUserFavoritesHeros < ActiveRecord::Migration[7.0]
  def change
    create_table :user_favorites_heros do |t|
      t.references :favorites_hero_1, null: false, foreign_key: { to_table: :heroes_lists }
      t.references :favorites_hero_2, null: false, foreign_key: { to_table: :heroes_lists }
      t.references :favorites_hero_3, null: false, foreign_key: { to_table: :heroes_lists }

      t.timestamps
    end
  end
end
