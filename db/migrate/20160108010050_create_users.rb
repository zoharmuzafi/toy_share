class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :f_name
      t.string :l_name
      t.string :email
      t.string :password
      t.string :avatar
      t.string :bio
      t.string :provider
      t.string :uid
      t.integer :city_id

      t.timestamps null: false
    end
  end
end
