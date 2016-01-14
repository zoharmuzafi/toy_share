class AddToyToChat < ActiveRecord::Migration
  def change
  	add_column :chats, :toy_id, :integer
  end
end
