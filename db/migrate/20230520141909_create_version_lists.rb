class CreateVersionLists < ActiveRecord::Migration[7.0]
  def change
    create_table :version_lists do |t|
      t.string :version_number
      t.string :change_information

      t.timestamps
    end
  end
end
