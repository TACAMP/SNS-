class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title, null: false
      t.text :description
      t.string :campsite_name
      t.text :campsite_address

      t.timestamps
    end

    add_index :posts, :title
  end
end
