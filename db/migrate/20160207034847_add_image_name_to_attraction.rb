class AddImageNameToAttraction < ActiveRecord::Migration
  def change
    add_column :attractions, :image_name, :string
  end
end
