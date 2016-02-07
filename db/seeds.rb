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
      title:"DK’s Donuts",
      address:"1614 Santa Monica Blvd, Santa Monica, CA 90404",
      phone_number:"1 310-829-2512",
      subtitle:"Because you know you have a sweet tooth",
      image_name:"dks_donuts.jpg",
      link:"http://www.dksdonuts.com/menu/",
      tag_list:"Eat"
    },
    {
      title:"Eggslut",
      address:"317 S Broadway, Los Angeles, CA 90013",
      phone_number:"N/A",
      subtitle:"The longest line at Grand Central Market, for a reason",
      image_name:"eggslut.jpg",
      link:"http://eggslut.com/",
      tag_list:"Eat"
    },
    {
      title:"First Fridays",
      address:"Abbot Kinney Blvd, Venice, CA 90291",
      phone_number:"N/A",
      subtitle:"A monthly food truck gathering in Venice Beach",
      image_name:"first_fridays.jpg",
      link:"http://abbotkinneyfirstfridays.com/food-trucks/",
      tag_list:"Eat"
    },
    {
      title:"Intelligentsia",
      address:"3922 Sunset Blvd, Los Angeles, CA 90029",
      phone_number:"1 323-663-6173",
      subtitle:"The hippest neighborhood's answer to coffee",
      image_name:"intelligentisa.jpg",
      link:"www.intelligentsiacoffee.com",
      tag_list:"Eat"
    },
    {
      title:"Kang Ho Dong Baekjeong",
      address:"3465 W 6th St, Los Angeles, CA 90020",
      phone_number:"1 213-384-9678",
      subtitle:"To quell your Korean barbeque fix",
      image_name:"bbq.jpg",
      link:"",
      tag_list:"Eat"
    },
    {
      title:"Saffron & Rose Ice Cream",
      address:"1387 Westwood Blvd, Los Angeles, CA 90024",
      phone_number:"1 310-477-5533",
      subtitle:"For the adventurous ice cream aficionado",
      image_name:"saffron_and_rose.jpg",
      link:"http://www.golobolbol.org/menu.html",
      tag_list:"Eat"
    },
    {
      title:"The Stinking Rose",
      address:"55 N La Cienega Blvd, Beverly Hills, CA 90211",
      phone_number:"1 310-652-7673",
      subtitle:"Prepare to smell like garlic for the next week",
      image_name:"the_stinking_rose.jpg",
      link:"http://www.thestinkingrose.com/bh/menu1.html",
      tag_list:"Eat"
    },
    {
      title:"Urth Caffe",
      address:"451 S Hewitt St, Los Angeles, CA 90013",
      phone_number:"1 213-797-4534",
      subtitle:"Watch out for celebrities as you get your organic tea",
      image_name:"urth.jpg",
      link:"https://urthcaffe.com/",
      tag_list:"Eat"
    },
    {
      title:"Abbot Kinney Boulevard",
      address:"Abbot Kinney Blvd, Venice, CA 90291",
      phone_number:"N/A",
      subtitle:"GQ's so-called 'coolest block in America'",
      image_name:"abbot_kinney_blvd.jpg",
      link:"http://abbotkinneyblvd.com/",
      tag_list:"Explore"
    },
    {
      title:"Bradbury Building",
      address:"304 S Broadway, Los Angeles, CA 90013",
      phone_number:"213-626-1893",
      subtitle:"As featured in 'Blade Runner' and '500 Days of Summer'",
      image_name:"bradbury_building.jpg",
      link:"www.laconservancy.org",
      tag_list:"Explore"
    },
    {
      title:"Chateau Marmont",
      address:"8221 Sunset Blvd, Los Angeles, CA 90046",
      phone_number:"1 323-656-1010",
      subtitle:"An idyllic hotel on the busy Sunset Strip",
      image_name:"chateau_marmont.jpg",
      link:"www.chateaumarmont.com",
      tag_list:"Explore"
    },
    {
      title:"Olvera Street",
      address:"Olvera St, Los Angeles, CA 90012",
      phone_number:"N/A",
      subtitle:"Celebrate Hispanic culture in a downtown oasis",
      image_name:"olvera_st.jpg",
      link:"http://www.olvera-street.com/",
      tag_list:"Explore"
    },
    {
      title:"Runyon Canyon Park",
      address:"2000 N Fuller Ave, Los Angeles, CA 90046",
      phone_number:"1 323-666-5046",
      subtitle:"Natural beauty for hikers and photographers alike",
      image_name:"runyon_canyon.jpg",
      link:"www.laparks.org",
      tag_list:"Explore"
    },
    {
      title:"Venice Beach Boardwalk",
      address:"Ocean Front Walk, Los Angeles, CA 90291",
      phone_number:"1 310-396-6764",
      subtitle:"Relive your nostalgia for 1980s rollerbladers",
      image_name:"venice_beach_boardwalk.jpg",
      link:"venicebeach.com",
      tag_list:"Explore"
    },
    {
      title:"Santa Monica Pier",
      address:"200 Santa Monica Pier, Santa Monica, CA 90401",
      phone_number:"(310) 394-8042",
      subtitle:"Because ferris wheels aren't just for kids",
      image_name:"santa_monica.jpg",
      link:"http://santamonicapier.org/",
      tag_list:"Explore"
    },
    {
      title:"Walk of Fame",
      address:"7018 Hollywood Blvd, Los Angeles, CA 90028",
      phone_number:"1 323-469-8311",
      subtitle:"The quintessential LA activity",
      image_name:"walk_of_fame.jpg",
      link:"www.walkoffame.com",
      tag_list:"Explore"
    },
    {
      title:"Griffith Observatory",
      address:"2800 E Observatory Rd, Los Angeles, CA 90027",
      phone_number:"1 213-473-0800",
      subtitle:"The best viewpoint to look at the sky and skyline",
      image_name:"griffith.jpg",
      link:"www.griffithobservatory.org",
      tag_list:"Learn"
    },
    {
      title:"La Brea Tar Pits",
      address:"5801 Wilshire Blvd, Los Angeles, CA 90036",
      phone_number:"1 323-857-6300",
      subtitle:"Learn about amazing giant sloths",
      image_name:"tar_pit.jpg",
      link:"www.tarpits.org",
      tag_list:"Learn"
    },
    {
      title:"LACMA",
      address:"5905 Wilshire Blvd, Los Angeles, CA 90036",
      phone_number:"1 323-857-6000",
      subtitle:"Set aside an afternoon for this artistic wonderland",
      image_name:"lacma.jpg",
      link:"www.lacma.org",
      tag_list:"Learn"
    },
    {
      title:"MOCA",
      address:"250 S Grand Ave, Los Angeles, CA 90012",
      phone_number:"1 213-621-2766",
      subtitle:"You can always be more cultured",
      image_name:"moca.jpg",
      link:"www.moca.org",
      tag_list:"Learn"
    },
    {
      title:"Natural History Museum of Los Angeles",
      address:"900 Exposition Blvd, Los Angeles, CA 90007",
      phone_number:"1 213-763-3466",
      subtitle:"If you're feeling inspired by Jurassic Park",
      image_name:"natural_history_museum.jpg",
      link:"www.nhm.org",
      tag_list:"Learn"
    },
    {
      title:"The Getty Center",
      address:"1200 Getty Center Dr, Los Angeles, CA 90049",
      phone_number:"1 310-440-7300",
      subtitle:"One of the finest collections of art west of the Mississippi",
      image_name:"the_getty.jpg",
      link:"www.getty.edu",
      tag_list:"Learn"
    },
    {
      title:"UCLA",
      address:"Los Angeles, CA 90095",
      phone_number:"1 310-825-4321",
      subtitle:"Stay for an afternoon... or four years",
      image_name:"ucla.jpg",
      link:"www.ucla.edu",
      tag_list:"Learn"
    },
    {
      title:"USC",
      address:"Los Angeles, CA",
      phone_number:"1 213-740-2311",
      subtitle:"One of LA's many universities",
      image_name:"usc.jpg",
      link:"usc.edu",
      tag_list:"Learn"
    },
    {
      title:"Max Karaoke Studio",
      address:"333 S Alameda St, Los Angeles, CA 90013",
      phone_number:"1 213-620-1030",
      subtitle:"If you want to bring out your inner Adele",
      image_name:"max_karaoke.jpg",
      link:"www.maxkaraokestudio.com",
      tag_list:"Party"
    },
    {
      title:"Perch",
      address:"448 S Hill St, Los Angeles, CA 90013",
      phone_number:"1 213-802-1770",
      subtitle:"Featuring a killer rooftop view",
      image_name:"perch.jpg",
      link:"perchla.com",
      tag_list:"Party"
    },
    {
      title:"STAPLES Center",
      address:"1111 S Figueroa St, Los Angeles, CA 90015",
      phone_number:"1 213-742-7100",
      subtitle:"All the sports you can dream of",
      image_name:"staples.jpg",
      link:"www.staplescenter.com",
      tag_list:"Party"
    },
    {
      title:"The Edison",
      address:"108 W 2nd St #101, Los Angeles, CA 90012",
      phone_number:"1 213-613-0000",
      subtitle:"The interior design is reason enough to swing by",
      image_name:"the_edison.jpg",
      link:"www.edisondowntown.com",
      tag_list:"Party"
    },
    {
      title:"The Greek Theatre",
      address:"2700 N Vermont Ave, Los Angeles, CA 90027",
      phone_number:"1 323-665-5857",
      subtitle:"The interior design is reason enough to swing by",
      image_name:"the_greek_theatre.jpg",
      link:"www.greektheatrela.com",
      tag_list:"Party"
    },
    {
      title:"The Misfit Restaurant + Bar",
      address:"225 Santa Monica Blvd, Santa Monica, CA 90401",
      phone_number:"1 310-656-9800",
      subtitle:"Your safe bet, a well-loved establishment",
      image_name:"the_misfit.jpg",
      link:"www.themisfitbar.com",
      tag_list:"Party"
    },
    {
      title:"The Roxy Theatre",
      address:"9009 Sunset Blvd, West Hollywood, CA 90069",
      phone_number:"1 310-278-9457",
      subtitle:"Fame, history, and rock n' roll on the Sunset Strip",
      image_name:"the_roxy.jpg",
      link:"www.theroxy.com",
      tag_list:"Party"
    },
    {
      title:"Upright Citizens Brigade Theatre",
      address:"5919 Franklin Ave, Los Angeles, CA 90028",
      phone_number:"1 323-908-8702",
      subtitle:"Intimately experience the future stars of comedy",
      image_name:"ucb.jpg",
      link:"losangeles.ucbtheatre.com",
      tag_list:"Party"
    },
    {
      title:"Amoeba Music",
      address:"6400 Sunset Blvd, Los Angeles, CA 90028",
      phone_number:"1 323-245-6400",
      subtitle:"An institution for the record collector",
      image_name:"amoeba.jpg",
      link:"www.amoeba.com",
      tag_list:"Shop"
    },
    {
      title:"Beverly Center",
      address:"8500 Beverly Blvd, Los Angeles, CA 90048",
      phone_number:"1 310-854-0070",
      subtitle:"Eight stories of shopping paradise",
      image_name:"beverly_center.jpg",
      link:"www.beverlycenter.com",
      tag_list:"Shop"
    },
    {
      title:"Melrose Trading Post",
      address:"7850 Melrose Ave, Los Angeles, CA 90046",
      phone_number:"1 323-655-7679",
      subtitle:"With such a unique bazaar, you're guaranteed to find something special",
      image_name:"",
      link:"www.melrosetradingpost.org",
      tag_list:"Shop"
    },
    {
      title:"Rodeo Drive",
      address:"Rodeo Dr, Los Angeles, CA 90035",
      phone_number:"1 323 769-3600",
      subtitle:"The definition of luxurious shopping",
      image_name:"rodeo_drive.jpg",
      link:"rodeodrive-bh.com",
      tag_list:"Shop"
    },
    {
      title:"The Grove",
      address:"189 The Grove Dr, Los Angeles, CA 90036",
      phone_number:"1 323-900-8080",
      subtitle:"An outdoor mall with added glamour",
      image_name:"the_grove.jpg",
      link:"www.thegrovela.com",
      tag_list:"Shop"
    },
    {
      title:"The Last Bookstore",
      address:"453 S Spring St, Los Angeles, CA 90013",
      phone_number:"1 213-488-0599",
      subtitle:"The bibliophile's heaven",
      image_name:"last_bookstore.jpg",
      link:"www.lastbookstorela.com",
      tag_list:"Shop"
    },
    {
      title:"Third Street Promenade",
      address:"1351 3rd Street Promenade #201, Santa Monica, CA 90401",
      phone_number:"1 310-393-8355",
      subtitle:"Bring the family on a sunny stroll",
      image_name:"3rd_street_promenade.jpg",
      link:"www.downtownsm.com",
      tag_list:"Shop"
    },
    {
      title:"Wasteland",
      address:"7428 Melrose Ave, Los Angeles, CA 90046",
      phone_number:"1 323-653-3028",
      subtitle:"It's worth sifting through this high-end thrift store",
      image_name:"wasteland.jpg",
      link:"www.shopwasteland.com",
      tag_list:"Shop"
    }
  ]
)
