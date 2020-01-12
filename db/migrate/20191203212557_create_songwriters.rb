class CreateSongwriters < ActiveRecord::Migration[5.2]
  def change
    create_table :songwriters do |t|
      t.integer :position
      t.string :name
      t.text :bio
      t.string :img_url
      t.string :spotify_playlist
      t.string :fb
      t.string :insta
      t.string :twitter
      t.string :spotify

      t.timestamps
    end
  end
end
