class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.references :topic, foreign_key: true
      t.references :user, foreign_key: true
      t.text :content
      t.integer :likes_count

      t.timestamps
    end
  end
end
