class CreateToys < ActiveRecord::Migration
  def change
    create_table :toys do |t|
      t.string :name
      t.string :description
      t.string :gender
      t.string :age_range
      t.string :images
      t.integer :user_id
      t.integer :city_id
      t.boolean :available

      t.timestamps null: false
    end
  end
end
