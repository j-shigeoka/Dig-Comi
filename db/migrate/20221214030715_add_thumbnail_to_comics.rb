class AddThumbnailToComics < ActiveRecord::Migration[6.1]
  def change
    add_column :comics, :thumbnail, :text
  end
end
