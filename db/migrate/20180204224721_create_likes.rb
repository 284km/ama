class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.references :user,    foreign_key: true, null: false, index: false
      t.references :comment, foreign_key: true, null: false, index: false

      t.timestamps
    end

    add_index :likes, [:user_id, :comment_id], unique: true
  end
end
