class CreateCatalogues < ActiveRecord::Migration[5.2]
  def change
    create_table :catalogues do |t|
      t.string :artist
      t.string :title
      t.string :img_url
      t.text :bio
      t.integer :position
      t.string :media

      t.timestamps
    end
  end
end
