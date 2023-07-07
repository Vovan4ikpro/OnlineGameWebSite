ActiveAdmin.register HeroesStatistic do
  permit_params :hero_type_id, :complexity, :attack_type_id, :hero_attributes_id, :attack, :defense

  form do |f|
    f.inputs 'Heroes Statistic' do
      f.input :hero_type_id, as: :select, collection: HeroTypeList.all.map { |htl| [htl.main_stat, htl.id] }
      f.input :complexity
      f.input :attack_type_id, as: :select, collection: HeroAttackTypeList.all.map { |htl| [htl.attack, htl.id] }
      f.input :hero_attributes_id, as: :select, collection: HeroAttributesList.all.map { |htl| ["#{htl.id} - #{htl.power} - #{htl.agility} - #{htl.intellect}", htl.id] }
      f.input :attack
      f.input :defense
    end
    f.actions
  end
end
