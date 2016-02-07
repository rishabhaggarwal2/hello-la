class AddRecommendedToAttraction < ActiveRecord::Migration
  def change
    add_column :attractions, :recommended, :boolean
  end
end
