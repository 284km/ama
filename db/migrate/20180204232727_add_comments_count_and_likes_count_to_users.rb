class AddCommentsCountAndLikesCountToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :comments_count, :integer
    add_column :users, :likes_count, :integer
  end
end
