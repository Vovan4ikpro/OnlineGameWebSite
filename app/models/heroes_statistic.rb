class HeroesStatistic < ApplicationRecord
  belongs_to :hero_type_list, foreign_key: 'hero_type_id'
  belongs_to :hero_attack_type_list, foreign_key: 'attack_type_id'
  belongs_to :hero_attributes_list, foreign_key: 'hero_attributes_id'
  has_one :heroes_list, foreign_key: "hero_statistic_id"

  # belongs_to :hero_type, class_name: 'HeroTypeList', foreign_key: 'hero_type_id'
  # belongs_to :attack_type, class_name: 'HeroAttackTypeList'
  # belongs_to :attributes, class_name: 'HeroAttributesList'
  # has_one :heroes_lists

  # has_one :heroes_lists
  # belongs_to :hero_type_list, foreign_key: 'hero_type_id', class_name: 'HeroTypeList'
  # belongs_to :hero_attributes_list, foreign_key: 'attributes_id', class_name: 'HeroAttributesList'
  # belongs_to :hero_attack_type_list, foreign_key: 'attack_type_id', class_name: 'HeroAttackTypeList'
  # belongs_to :hero_type_list, foreign_key: 'hero_type_id'
  # belongs_to :hero_attributes_list, foreign_key: 'attributes_id'
  # belongs_to :hero_attack_type_list, foreign_key: 'attack_type_id'
  # belongs_to :hero_type_list, primary_key: 'hero_type_id'
  # belongs_to :hero_attributes_list, primary_key: 'attributes_id'
  # belongs_to :hero_attack_type_list, primary_key: 'attack_type_id'
  # belongs_to :hero_type_list, foreign_key: :hero_type_id
  # belongs_to :hero_attack_type_list, foreign_key: :attack_type_id
  # belongs_to :hero_attributes_list, foreign_key: :attributes_id
  # belongs_to :hero_type, class_name: 'HeroTypeList', foreign_key: 'hero_type_id'
  # belongs_to :attack_type, class_name: 'HeroAttackTypeList', foreign_key: 'attack_type_id'
  # belongs_to :hero_attributes, class_name: 'HeroAttributesList', foreign_key: 'hero_attributes_id'
  # belongs_to :hero_type_list
  # belongs_to :hero_attack_type_list
  # belongs_to :hero_attributes_list
end
