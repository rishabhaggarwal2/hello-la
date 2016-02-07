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
end
