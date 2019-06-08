class RenameOrderInArtists < ActiveRecord::Migration[5.2]
  def change
    rename_column :artists, :order, :position
  end
end
