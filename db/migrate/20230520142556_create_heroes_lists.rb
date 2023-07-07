class CreateHeroesLists < ActiveRecord::Migration[7.0]
  def change
    create_table :heroes_lists do |t|
      t.string :hero_name
      t.references :hero_statistic, null: false, foreign_key: { to_table: :heroes_statistics }
      t.string :description

      t.timestamps
    end
  end
end
