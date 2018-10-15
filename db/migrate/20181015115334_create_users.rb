class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name, null: false, index: true
      t.string :image
      t.text :bio
      t.string :email, null: false, unique: true
      t.references :team, null: false, foreign_key: true
      t.timestamps
    end
  end
end
