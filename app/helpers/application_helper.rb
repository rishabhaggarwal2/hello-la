module ApplicationHelper

  def title_helper(title)
    if title.empty?
      "Hello LA!"
    else
      "Hello LA - #{title}"
    end
  end

  def get_tag(attraction)
    attraction.tag_list.first
  end

  def category_helper(attraction)
    "/categories/#{get_tag(attraction).downcase}"
  end

  def tag_color(pane, attraction)
    tag_groupings = {
      "Eat" => ["#c85e1a","#e8ad00"],
      "Shop" => ["#f18996","#2d4454"],
      "Explore" => ["#8ab0cf","#bf5126"],
      "Party" => ["#621e74","#6ba0bf"],
      "Learn" => ["#829b6a","#11506b"]
    }
    tag_groupings[get_tag(attraction)][pane % 2]
  end

  def tag_icon_helper(attraction)
    "#{get_tag(attraction).downcase}_icon_white.svg"
  end

end
