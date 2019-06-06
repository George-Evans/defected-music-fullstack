class CreateEditorials < ActiveRecord::Migration[5.2]
  def change
    create_table :editorials do |t|
      t.integer :artist_id
      t.string :link_url
      t.string :img_url

      t.timestamps
    end
    add_index :editorials, :artist_id
  end
end
