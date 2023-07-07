class HeroAttributesList < ApplicationRecord
  has_many :heroes_statistics, foreign_key: "hero_attributes_id"
end
