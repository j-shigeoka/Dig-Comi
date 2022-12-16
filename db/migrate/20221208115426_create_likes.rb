class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.integer  :user_id,     null: false, default: ""
      t.integer  :comic_id,    null: false, default: ""
      t.timestamps
    end
  end
end
