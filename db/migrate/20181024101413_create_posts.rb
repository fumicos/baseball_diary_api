class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.text :text, null: false
      t.string :image
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
