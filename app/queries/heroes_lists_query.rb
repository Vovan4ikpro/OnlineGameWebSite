class HeroesListsQuery

  def self.sort_complexity(heroes_lists, sort_complex)
    case sort_complex
    when "1"
      heroes_lists_complexity = heroes_lists.select { |heroes_list| heroes_list.heroes_statistic.complexity == 1 }
    when "2"
      heroes_lists_complexity = heroes_lists.select { |heroes_list| heroes_list.heroes_statistic.complexity == 2 }
    when "3"
      heroes_lists_complexity = heroes_lists.select { |heroes_list| heroes_list.heroes_statistic.complexity == 3 }
    else
      heroes_lists
    end
  end

  def self.sort_main_stat(heroes_lists, main_stat)
    case main_stat
    when "1"
      heroes_lists_main_stat = heroes_lists.select { |heroes_list| heroes_list.heroes_statistic.hero_type_id == 1 }
    when "2"
      heroes_lists_main_stat = heroes_lists.select { |heroes_list| heroes_list.heroes_statistic.hero_type_id == 2 }
    when "3"
      heroes_lists_main_stat = heroes_lists.select { |heroes_list| heroes_list.heroes_statistic.hero_type_id == 3 }
    when "4"
      heroes_lists_main_stat = heroes_lists.select { |heroes_list| heroes_list.heroes_statistic.hero_type_id == 4 }
    else
      heroes_lists
    end
  end

  def self.search_hero(heroes_lists, hero_name)
    if hero_name.present?
      heroes_lists = heroes_lists.select { |heroes_list| heroes_list.hero_name.include?(hero_name) }
    end
    heroes_lists
  end
end
