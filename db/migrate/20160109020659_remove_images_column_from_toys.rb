class RemoveImagesColumnFromToys < ActiveRecord::Migration
  def change
  	remove_column :toys, :images
  end
end
