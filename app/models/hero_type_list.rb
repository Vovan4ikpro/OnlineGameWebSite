class HeroTypeList < ApplicationRecord
   has_many :heroes_statistics, foreign_key: "hero_type_id"
end
