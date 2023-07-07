class CreateHeroesStatistics < ActiveRecord::Migration[7.0]
  def change
    create_table :heroes_statistics do |t|
      t.references :hero_type, null: false, foreign_key: { to_table: :hero_type_lists }
      t.integer :complexity
      t.references :attack_type, null: false, foreign_key: { to_table: :hero_attack_type_lists }
      t.references :hero_attributes, null: false, foreign_key: { to_table: :hero_attributes_lists }
      t.integer :attack
      t.integer :defense

      t.timestamps
    end
  end
end
