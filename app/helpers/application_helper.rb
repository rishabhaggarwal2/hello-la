module ApplicationHelper
  def title_helper(title)
    if title.empty?
      "Hello LA!"
    else
      "Hello LA - #{title}"
    end
  end

  def tag_color(pane, attraction)
    case attraction.tag_list.first
      when "Eat"
        if pane == 1
          "#c85e1a"
        else
          "#e8ad00"
        end

      when "Shop"
        if pane == 1
          '#f18996'
        else
          '#2d4454'
        end

      when "Explore"
        if pane == 1
          '#8ab0cf'
        else
          '#bf5126'
        end

      when "Party"
        if pane == 1
          '#621e74'
        else
          '#6ba0bf'
        end

      when "Learn"
        if pane == 1
          '#829b6a'
        else
          '#11506b'
        end

      else
        if pane == 1
          '#000000'
        else
          '#FFFFFF'
        end
    end
  end

  def tag_icon_helper(attraction)
    tag = attraction.tag_list.first
    "#{tag.downcase}_icon_white.svg"
  end

end
