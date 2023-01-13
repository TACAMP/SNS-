class CreateCampTools < ActiveRecord::Migration[7.0]
  def change
    create_table :camp_tools do |t|
      t.references :post, null: false, foreign_key: true
      t.string :name,null: false

      t.timestamps
    end
  end
end
