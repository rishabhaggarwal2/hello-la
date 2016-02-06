# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

list = ['Eat', 'Shop', 'Explore', 'Party', 'Learn']

list.each do |tag|
  ActsAsTaggableOn::Tag.new(:name => tag).save
end

Attraction.create(
  [
    {
      title:"Eggslut",
      short_desc:Forgery('lorem_ipsum').paragraph,
      long_desc:Forgery('lorem_ipsum').paragraphs,
      tag_list:"Eat"
    }
  ]
)
