class AddLikesCountIndexToComments < ActiveRecord::Migration[5.1]
  def change
    add_index :comments, :likes_count
  end
end
