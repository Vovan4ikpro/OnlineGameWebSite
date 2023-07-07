class CreateHeroAttackTypeLists < ActiveRecord::Migration[7.0]
  def change
    create_table :hero_attack_type_lists do |t|
      t.string :attack

      t.timestamps
    end
  end
end
