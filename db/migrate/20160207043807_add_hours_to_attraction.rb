class AddHoursToAttraction < ActiveRecord::Migration
  def change
    add_column :attractions, :hours, :string
  end
end
