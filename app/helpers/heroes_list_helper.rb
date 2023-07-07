module HeroesListHelper
  def next_value(current_value)
    case current_value
    when "1"
      "2"
    when "2"
      "3"
    when "3"
      "4"
    else
      "1"
    end
  end

  def next_value_four(current_value)
    case current_value
    when "1"
      "2"
    when "2"
      "3"
    when "3"
      "4"
    when "4"
      "5"
    else
      "1"
    end
  end
end
