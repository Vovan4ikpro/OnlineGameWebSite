class CreateUserMoreInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :user_more_infos do |t|
      t.references :user, null: false, foreign_key: true
      t.references :favorites_heroes, null: false, foreign_key: { to_table: :user_favorites_heros }
      t.integer :rating
      t.integer :grade
      t.string :review
      t.references :version, null: false, foreign_key: { to_table: :version_lists }

      t.timestamps
    end
  end
end
