class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.integer :github_id,      null: false, index: { unique: true }
      t.string  :email,          null: false
      t.string  :nickname,       null: false
      t.string  :remember_token, null: false, index: { unique: true }

      t.timestamps
    end
  end
end
