module StatsColorHelper
  def find_color(stat)
    if stat > 0 && stat <= 8
      'color-medium-red'
    elsif stat > 8 && stat <= 10
      'color-medium-orange'
    elsif stat > 10 && stat <= 13
      'color-high-orange'
    elsif stat > 13 && stat <= 15
      'color-medium-green'
    elsif stat > 15 && stat <= 20
      'color-high-green'
    end
  end
end



# $stat-red: #FF0303;
# $stat-medium-red: #f84851 ;
# $stat-medium-orange: #F99417;
# $stat-high-orange: #fc6f12;
# $stat-medium-green: rgba(0, 225, 149, 1) ;
# $stat-high-green: rgba(0, 255, 0, 1);
