class RemoveProfileImageUrlFromUser < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :profile_image_url, :text
  end
end
