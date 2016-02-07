module AttractionsHelper
  def humanize(string)
    case string
    when "address"
      "Address"
    when "phone_number"
      "Phone Number"
    when "hours"
      "Hours"
    when "link"
      "Website"
    else
      "What"
    end
  end

  def description_for_tag(tag)
    case tag
    when "Eat"
      "Foodies, rejoice! Above we generated a random four of our top picks for places to chow in LA. Los Angeles is a dynamic city with an equally dynamic food scene—from Korean BBQ to #InstagramWorthy brunch. Get ready to enjoy the best of coffee shops with the occasional celebrity sight."
    when "Explore"
      "Up for an adventure? Here are a random pick of our four must-see sights—ranging from the quintessential tourist traps to our favorite hidden gems. Revel in the nostalgic and modern spots alike, and don’t forget your camera!"
    when "Learn"
      "Ready for a history lesson? LA is a hot spot for museums, observatories, and universities for those who want to spend their day learning something new. Here are four great places to expand your knowledge, and refresh for even more."
    when "Party"
      "Now, the real reason you came to Los Angeles. With a great selection of clubs, bars, and venues, there’s no way you can have a bad night here in LA. Check out these four lively joints and consider heading out there for a night you won’t forget. Refresh the page to load even more!"
    when "Shop"
      "If you’ve always dreamed of shopping down streets of rows and rows of palm trees, you’re in the right place. Here are a random selection of our four favorite spots around town that include new, vintage, and everything in between. We are not responsible for the future damage to your wallet."
    else
      "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
  		tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
  		quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
  		consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
  		cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
  		proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    end
  end
end
