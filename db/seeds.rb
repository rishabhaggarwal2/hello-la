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
      title:"Urth Caffe",
      subtitle:"Although organic tea is their standard, the chicken curry sandwich is a must-try.",
      short_desc:Forgery('lorem_ipsum').paragraph,
      long_desc:Forgery('lorem_ipsum').paragraphs,
      tag_list:"Eat",
      address:"451 South Hewitt St",
      phone_number:"(213) 797-4527",
      image_name:"urth.jpg",
      tips:"Please eat here\nReally please its nice"
    },
    {
      title:"DK's Donuts",
      subtitle:"Donuts are good",
      short_desc:Forgery('lorem_ipsum').paragraph,
      long_desc:Forgery('lorem_ipsum').paragraphs,
      tag_list:"Eat",
      address:"Somewhere in the Milky Way",
      phone_number:Forgery('address').phone
    },
    {
      title:"The Last Bookstore",
      image_name:"last_bookstore.jpg",
      short_desc:Forgery('lorem_ipsum').paragraph,
      long_desc:Forgery('lorem_ipsum').paragraphs,
      tag_list:"Shop",
      subtitle:Forgery('lorem_ipsum').sentence,
      tips:Forgery('lorem_ipsum').sentences,
      address:Forgery('address').street_address,
      phone_number:Forgery('address').phone,
      hours:"9-10 Mon-Fri"
    },
    {
      title:"Santa Monica Pier",
      image_name:"santa_monica.jpg",
      short_desc:Forgery('lorem_ipsum').paragraph,
      long_desc:Forgery('lorem_ipsum').paragraphs,
      tag_list:"Explore",
      subtitle:Forgery('lorem_ipsum').sentence,
      tips:Forgery('lorem_ipsum').sentences,
      address:Forgery('address').street_address,
      phone_number:Forgery('address').phone,
      hours:"9-10 Mon-Fri"
    },
    {
      title:"UCB Theater",
      image_name:"ucb.jpg",
      short_desc:Forgery('lorem_ipsum').paragraph,
      long_desc:Forgery('lorem_ipsum').paragraphs,
      tag_list:"Party",
      subtitle:Forgery('lorem_ipsum').sentence,
      tips:Forgery('lorem_ipsum').sentences,
      address:Forgery('address').street_address,
      phone_number:Forgery('address').phone,
      hours:"9-10 Mon-Fri"
    },
    {
      title:"Griffith Observatory",
      short_desc:Forgery('lorem_ipsum').paragraph,
      long_desc:Forgery('lorem_ipsum').paragraphs,
      tag_list:"Learn",
      image_name:"griffith.jpg",
      subtitle:Forgery('lorem_ipsum').sentence,
      tips:Forgery('lorem_ipsum').sentences,
      address:Forgery('address').street_address,
      phone_number:Forgery('address').phone,
      hours:"9-10 Mon-Fri"
    },
    {
      title:"Eggslut",
      tag_list:"Eat",
      image_name:"eggslut.jpg",
      short_desc:Forgery('lorem_ipsum').paragraph,
      long_desc:Forgery('lorem_ipsum').paragraphs,
      subtitle:Forgery('lorem_ipsum').sentence,
      tips:Forgery('lorem_ipsum').sentences,
      address:Forgery('address').street_address,
      phone_number:Forgery('address').phone,
      hours:"9-10 Mon-Fri"
    },
    {
      title:"First Fridays",
      tag_list:"Eat",
      image_name:"first_fridays.jpg",
      short_desc:Forgery('lorem_ipsum').paragraph,
      long_desc:Forgery('lorem_ipsum').paragraphs,
      subtitle:Forgery('lorem_ipsum').sentence,
      tips:Forgery('lorem_ipsum').sentences,
      address:Forgery('address').street_address,
      phone_number:Forgery('address').phone,
      hours:"9-10 Mon-Fri"
    },
    {
      title:"Intelligensia",
      tag_list:"Eat",
      short_desc:Forgery('lorem_ipsum').paragraph,
      long_desc:Forgery('lorem_ipsum').paragraphs,
      subtitle:Forgery('lorem_ipsum').sentence,
      tips:Forgery('lorem_ipsum').sentences,
      address:Forgery('address').street_address,
      phone_number:Forgery('address').phone,
      hours:"9-10 Mon-Fri"
    },
    {
      title:"Kang Ho Dong Baekjeong",
      tag_list:"Eat",
      short_desc:Forgery('lorem_ipsum').paragraph,
      long_desc:Forgery('lorem_ipsum').paragraphs,
      subtitle:Forgery('lorem_ipsum').sentence,
      tips:Forgery('lorem_ipsum').sentences,
      address:Forgery('address').street_address,
      phone_number:Forgery('address').phone,
      hours:"9-10 Mon-Fri"
    },
    {
      title:"Saffron & Rose Ice Cream",
      tag_list:"Eat",
      short_desc:Forgery('lorem_ipsum').paragraph,
      long_desc:Forgery('lorem_ipsum').paragraphs,
      subtitle:Forgery('lorem_ipsum').sentence,
      tips:Forgery('lorem_ipsum').sentences,
      address:Forgery('address').street_address,
      phone_number:Forgery('address').phone,
      hours:"9-10 Mon-Fri"
    },
    {
      title:"The Stinking Rose",
      tag_list:"Eat",
      short_desc:Forgery('lorem_ipsum').paragraph,
      long_desc:Forgery('lorem_ipsum').paragraphs,
      subtitle:Forgery('lorem_ipsum').sentence,
      tips:Forgery('lorem_ipsum').sentences,
      address:Forgery('address').street_address,
      phone_number:Forgery('address').phone,
      hours:"9-10 Mon-Fri"
    }
  ]
)
