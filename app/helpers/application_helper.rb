module ApplicationHelper
  def title_helper(title)
    if title.empty?
      "Hello LA!"
    else
      "Hello LA - #{title}"
    end
  end
end
