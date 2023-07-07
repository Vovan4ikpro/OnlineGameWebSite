ActiveAdmin.register HeroesList do

  permit_params :hero_name, :hero_statistic_id, :description, :hero_picture

  form do |f|
    f.inputs 'Heroes Statistic' do
      f.input :hero_name
      f.input :hero_statistic_id, as: :select, collection: HeroesStatistic.all.map { |htl| ["#{htl.id} - #{htl.complexity} - #{htl.attack} - #{htl.defense}", htl.id] }
      f.input :description
      f.input :hero_picture, as: :file
      end
    f.actions
  end
  
end
