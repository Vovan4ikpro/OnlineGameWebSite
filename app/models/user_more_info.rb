class UserMoreInfo < ApplicationRecord
  belongs_to :user
  belongs_to :user_favorites_hero, foreign_key: 'favorites_heroes_id'
  belongs_to :version_list, foreign_key: 'version_id'
end
