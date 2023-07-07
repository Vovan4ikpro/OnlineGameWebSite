class HeroesList < ApplicationRecord
  has_many :user_favorites_hero, foreign_key: "favorites_hero_1_id"
  has_many :user_favorites_hero, foreign_key: "favorites_hero_2_id"
  has_many :user_favorites_hero, foreign_key: "favorites_hero_3_id"
  belongs_to :heroes_statistic, foreign_key: 'hero_statistic_id'
  # validates :hero_statistic_id, presence: true, uniqueness: true
  has_one_attached :hero_picture


end
