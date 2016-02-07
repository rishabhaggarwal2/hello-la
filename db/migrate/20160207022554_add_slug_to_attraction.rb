class AddSlugToAttraction < ActiveRecord::Migration
  def change
    add_column :attractions, :slug, :string
  end
end
