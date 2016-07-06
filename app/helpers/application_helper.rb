module ApplicationHelper

  # 日本時間で表示
  def local_time(time)
    time.in_time_zone('Tokyo').strftime('%Y年%m月%d日 %H:%M:%S')
  end

  # 可否の表示方法「◯」「×」
  def symbol_display(fit)
    if fit == "true"
      "◯"
    else
      " "
    end
  end

  # 可否の表示方法  更新結果
  def propriety_display(fit)
    if fit == "true"
      "更新済み"
    else
      "失敗"
    end
  end

end
