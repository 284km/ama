class AddCommentsCountAndLikesCountToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :comments_count, :integer, null: false, default: 0
    add_column :users, :likes_count,    :integer, null: false, default: 0
  end
end
