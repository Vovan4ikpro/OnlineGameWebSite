class HeroAttackTypeList < ApplicationRecord
  has_many :heroes_statistics, foreign_key: "attack_type_id"
end
