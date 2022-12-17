class RemoveStatusFromComics < ActiveRecord::Migration[6.1]
  def change
    remove_column :comics, :status, :integer
  end
end
