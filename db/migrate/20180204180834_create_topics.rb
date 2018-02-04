class CreateTopics < ActiveRecord::Migration[5.1]
  def change
    create_table :topics do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.text :description
      t.integer :comments_count

      t.timestamps
    end
  end
end
