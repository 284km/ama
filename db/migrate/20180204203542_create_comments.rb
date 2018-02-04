class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.references :topic, foreign_key: true, null: false
      t.references :user,  foreign_key: true, null: false
      t.text    :content,     null: false
      t.integer :likes_count, null: false, default: 0

      t.timestamps
    end
  end
end
