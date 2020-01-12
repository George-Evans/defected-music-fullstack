class CreateCatEditorials < ActiveRecord::Migration[5.2]
  def change
    create_table :cat_editorials do |t|
      t.integer :catalogue_id
      t.string :link_url
      t.string :img_url

      t.timestamps
    end
    add_index :cat_editorials, :catalogue_id
  end
end
