class CreateAbouts < ActiveRecord::Migration[5.2]
  def change
    create_table :abouts do |t|
      t.string :title
      t.text :body
      t.string :img_url

      t.timestamps
    end
  end
end
