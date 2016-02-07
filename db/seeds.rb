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
      title:"Urth Cafe",
      subtitle:"Although organic tea is their standard, the chicken curry sandwich is a must-try.",
      short_desc:Forgery('lorem_ipsum').paragraph,
      long_desc:Forgery('lorem_ipsum').paragraphs,
      tag_list:"Eat",
      address:"451 South Hewitt St, Los Angeles, CA 90013",
      phone_number:"(213) 797-4527",
      image_name:"urth.jpg",
      tips:"Please eat here\nReally please its nice"
    },
    {
      title:"The Last Bookstore",
      short_desc:Forgery('lorem_ipsum').paragraph,
      long_desc:Forgery('lorem_ipsum').paragraphs,
      tag_list:"Shop"
    },
    {
      title:"Santa Monica Pier",
      short_desc:Forgery('lorem_ipsum').paragraph,
      long_desc:Forgery('lorem_ipsum').paragraphs,
      tag_list:"Explore"
    },
    {
      title:"UCB Theater",
      short_desc:Forgery('lorem_ipsum').paragraph,
      long_desc:Forgery('lorem_ipsum').paragraphs,
      tag_list:"Party"
    },
    {
      title:"Griffith Observatory",
      short_desc:Forgery('lorem_ipsum').paragraph,
      long_desc:Forgery('lorem_ipsum').paragraphs,
      tag_list:"Learn",
      image_name:"griffith.jpg"
    }
  ]
)
