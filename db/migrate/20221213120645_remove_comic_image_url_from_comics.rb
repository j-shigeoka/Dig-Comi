class RemoveComicImageUrlFromComics < ActiveRecord::Migration[6.1]
  def change
    remove_column :comics, :comic_image_url, :text
  end
end
