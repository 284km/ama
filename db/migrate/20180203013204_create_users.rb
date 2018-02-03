class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.integer :github_id
      t.string :email
      t.string :remember_token

      t.timestamps
    end
  end
end
