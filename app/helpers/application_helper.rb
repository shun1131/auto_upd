module ApplicationHelper

  # 日本時間で表示
  def local_time(time)
    time.in_time_zone('Tokyo').strftime('%Y年%m月%d日 %H:%M:%S')
  end

  # 可否の表示方法「◯」「×」
  def symbol_display(fit)
    if fit == 1
      "◯"
    elsif fit == 0
      "×"
    else
      " "
    end
  end

  def restaurant_display(fit)
    if fit == 1
      "◯"
    else
      " "
    end
  end

end
