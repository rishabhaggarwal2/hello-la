module AttractionsHelper
  def humanize(string)
    case string
    when "address"
      "Address"
    when "phone_number"
      "Phone Number"
    when "hours"
      "Hours"
    else
      "What"
    end
  end
end
