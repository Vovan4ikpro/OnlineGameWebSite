class UserFavoritesHero < ApplicationRecord
  has_one :user_more_info, foreign_key: "favorites_heroes_id"
  belongs_to :heroes_list, foreign_key: 'favorites_hero_1_id'
  belongs_to :heroes_list, foreign_key: 'favorites_hero_2_id'
  belongs_to :heroes_list, foreign_key: 'favorites_hero_3_id'
end
