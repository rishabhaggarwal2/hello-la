class CreateAttractions < ActiveRecord::Migration
  def change
    create_table :attractions do |t|
      t.string :title
      t.string :short_desc
      t.text :long_desc
      t.references :taggable, polymorphic:true, index:true

      t.timestamps
    end
  end
end
