class CreateHeroTypeLists < ActiveRecord::Migration[7.0]
  def change
    create_table :hero_type_lists do |t|
      t.string :main_stat
      t.timestamps
    end
  end
end
