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
          '#d01d34'
        else
          '#3b2f5e'
        end

      when "Explore"
        if pane == 1
          '#bf5126'
        else
          '#8ab0cf'
        end

      when "Party"
        if pane == 1
          '#621e74'
        else
          '#6ba1c0'
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
end
