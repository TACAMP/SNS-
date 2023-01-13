class CreateRealitionships < ActiveRecord::Migration[7.0]
  def change
    create_table :realitionships do |t|
      t.integer :follower_id, null: false
      t.integer :followed_id, null: false

      t.timestamps
    end
  end
end
