class CreateSongwriterEditorials < ActiveRecord::Migration[5.2]
  def change
    create_table :songwriter_editorials do |t|
      t.integer :songwriter_id
      t.string :link_url
      t.string :img_url

      t.timestamps
    end
    add_index :songwriter_editorials, :songwriter_id
  end
end
