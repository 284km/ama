class CreateTopics < ActiveRecord::Migration[5.1]
  def change
    create_table :topics do |t|
      t.references :user, foreign_key: true, null: false
      t.string  :title,          null: false
      t.text    :description,    null: false
      t.integer :comments_count, null: false, default: 0

      t.timestamps
    end
  end
end
