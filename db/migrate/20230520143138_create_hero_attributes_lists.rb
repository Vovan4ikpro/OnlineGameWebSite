class CreateHeroAttributesLists < ActiveRecord::Migration[7.0]
  def change
    create_table :hero_attributes_lists do |t|
      t.integer :power
      t.integer :agility
      t.integer :intellect

      t.timestamps
    end
  end
end
