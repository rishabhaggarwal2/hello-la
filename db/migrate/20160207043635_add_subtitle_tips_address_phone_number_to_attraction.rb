class AddSubtitleTipsAddressPhoneNumberToAttraction < ActiveRecord::Migration
  def change
    add_column :attractions, :subtitle, :string
    add_column :attractions, :tips, :string
    add_column :attractions, :address, :string
    add_column :attractions, :phone_number, :string
  end
end
