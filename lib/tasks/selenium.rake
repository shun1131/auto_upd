namespace :selenium do

  desc "特集 & 最新情報 更新"
  task double_update: :environment do
    p "Waiting..."
    # ブラウザ起動
    headless = Headless.new
    headless.start
    driver = Selenium::WebDriver.for :chrome
    # waitの設定
    driver.manage.timeouts.implicit_wait = 7

    # 更新時間スケジュールを指定
    guru_updates = Schedule.where(time2330: 1)
    # 更新開始
    guru_updates.each do |gu|
      # 【お店の最新情報】　更新プロセス
      if gu.restaurant.new_information == 1
        begin
          # ぐるなびproにアクセス
          driver.navigate.to "http://pro.gnavi.co.jp/"
          # 一度ログアウト
          driver.navigate.to "https://manage.gnavi.co.jp/ShopAdmin/misc/logout.php"
          # ログイン
          element = driver.find_element(:name, 'id')
          element.send_keys(gu.restaurant.account)
          element = driver.find_element(:name, 'pass')
          element.send_keys(gu.restaurant.pass)
          driver.find_element(:name, 'manageImage').click
          # お店の最新情報を更新
          driver.navigate.to "https://manage.gnavi.co.jp/rest_edit/latest/"
          element = driver.find_element(:class_name => "shopName")
          p element.text.encode('UTF-8')
          driver.find_element(:link_text, '編集').click
          driver.find_element(:id, 'edit_submit').click
          # driver.find_element(:id, 'update_submit').click
          p "info successed!!!"
          info_result = 1
        rescue => e
          p "info missed"
          info_result = 0
        end
      end

      # 【特集】　更新プロセス
      if gu.restaurant.feature == 1
        begin
          # ぐるなびproにアクセス
          driver.navigate.to "http://pro.gnavi.co.jp/"
          # 一度ログアウト
          driver.navigate.to "https://manage.gnavi.co.jp/ShopAdmin/misc/logout.php"
          # ログイン
          element = driver.find_element(:name, 'id')
          element.send_keys(gu.restaurant.account)
          element = driver.find_element(:name, 'pass')
          element.send_keys(gu.restaurant.pass)
          driver.find_element(:name, 'manageImage').click
          # 特集を更新
          driver.navigate.to "https://manage.gnavi.co.jp/SP/ShopAdmin/topics/topics_edit.php"
          element = driver.find_element(:name, 'topics_phrase')
          # 入力する文言の語尾に「!」をつけたり外したりする
          if gu.restaurant.feature_flag == 1
            element.send_keys(gu.restaurant.feature_contents)
            feature_restaurant = Restaurant.where(id: gu.restaurant.id)
            feature_restaurant.update_attribute(:feature_flag, 0)
          else
            element.send_keys("#{gu.restaurant.feature_contents}" + "!")
            feature_restaurant = Restaurant.where(id: gu.restaurant.id)
            feature_restaurant.update_attribute(:feature_flag, 1)
          end
          driver.find_element(:value, '  確認  ').click
          # driver.find_element(:value, '  登録  ').click
          p driver.current_url
          p "feature successed!!!"
          feature_result = 1
        rescue => e
          p "feature missed"
          feature_result = 0
        end
      end
      Record.create(
        restaurant_id: gu.restaurant.id,
        new_information: info_result,
        feature: feature_result,
        vacancy: nil,
      )
    end
    # ブラウザ終了
    driver.quit
    headless.destroy
  end


  desc "最新情報サンプル"
  task new_information: :environment do
    p "Waiting..."
    # ブラウザ起動
    headless = Headless.new
    headless.start
    driver = Selenium::WebDriver.for :chrome
    # waitの設定
    driver.manage.timeouts.implicit_wait = 7

    # 更新時間スケジュールを指定
    guru_updates = Schedule.where(time2330: 1)
    # 更新開始
    guru_updates.each do |gu|
      # 【お店の最新情報】　更新プロセス
      if gu.restaurant.new_information == 1
        begin
          # ぐるなびproにアクセス
          driver.navigate.to "http://pro.gnavi.co.jp/"
          sleep 3
          # 一度ログアウト
          driver.navigate.to "https://manage.gnavi.co.jp/ShopAdmin/misc/logout.php"
          sleep 3
          # ログイン
          p "process（1）"
          element = driver.find_element(:name, 'id')
          sleep 2
          element.send_keys(gu.restaurant.account)
          sleep 2
          element = driver.find_element(:name, 'pass')
          sleep 2
          element.send_keys(gu.restaurant.pass)
          sleep 2
          driver.find_element(:name, 'manageImage').click
          p "process（2）"
          sleep 3
          # お店の最新情報を更新
          driver.navigate.to "https://manage.gnavi.co.jp/rest_edit/latest/"
          sleep 3
          # 最新情報が2つ登録されている場合はランダムにどちらかを選択
          p "process（3）"
          element = driver.find_element(:class, 'neg-margin').find_element(:xpath, 'div[2]/ul/li[1]')
          if element.text == "掲載中"
            random_element = Random.rand(1 .. 2)
            if random_element == 1
              driver.find_element(:link_text, '編集').click
              p "process（4）"
              sleep 3
            else
              driver.find_element(:class, 'neg-margin').find_element(:xpath, 'div[2]/ul/li[2]/a').click
              p "process（4'）"
              sleep 3
            end
            element = driver.find_element(:name, 'news_text')
            p element.text
            driver.find_element(:id, 'edit_submit').click
            sleep 3
            # driver.find_element(:id, 'update_submit').click
            # sleep 3
          else
            p "process（5）"
            driver.find_element(:link_text, '編集').click
            driver.find_element(:id, 'edit_submit').click
            # driver.find_element(:id, 'update_submit').click
          end
          p "info successed!!!"
          info_result = 1
        rescue => e
          p "info missed"
          info_result = 0
        end
      end
      Record.create(
        restaurant_id: gu.restaurant.id,
        new_information: info_result,
        feature: nil,
        vacancy: nil,
      )
    end
    # ブラウザ終了
    driver.quit
    headless.destroy
  end


  desc "特集サンプル"
  task feature: :environment do
    p "Waiting..."
    # ブラウザ起動
    headless = Headless.new
    headless.start
    driver = Selenium::WebDriver.for :chrome
    # waitの設定
    driver.manage.timeouts.implicit_wait = 7

    # 更新時間スケジュールを指定
    guru_updates = Schedule.where(time2330: 1)
    # 更新開始
    guru_updates.each do |gu|
      # 【特集】　更新プロセス
      if gu.restaurant.feature == 1
        begin
          # ぐるなびproにアクセス
          driver.navigate.to "http://pro.gnavi.co.jp/"
          # 一度ログアウト
          driver.navigate.to "https://manage.gnavi.co.jp/ShopAdmin/misc/logout.php"
          # ログイン
          p "process（1）"
          element = driver.find_element(:name, 'id')
          element.send_keys(gu.restaurant.account)
          element = driver.find_element(:name, 'pass')
          element.send_keys(gu.restaurant.pass)
          driver.find_element(:name, 'manageImage').click
          # 特集を更新
          driver.navigate.to "https://manage.gnavi.co.jp/SP/ShopAdmin/topics/topics_edit.php"
          p "process（2）"
          element = driver.find_element(:name, 'topics_phrase')
          p "process（3）"
          # 一度inputの中身の内容を消す
          element.clear
          # 入力する文言の語尾に「!」をつけたり外したりする
          if gu.restaurant.feature_flag == 1
            element.send_keys(gu.restaurant.feature_contents)
            feature_restaurant = Restaurant.where(id: gu.restaurant.id).last
            feature_restaurant.update_attribute(:feature_flag, 0)
          else
            element.send_keys("#{gu.restaurant.feature_contents}" + "!")
            feature_restaurant = Restaurant.where(id: gu.restaurant.id).last
            feature_restaurant.update_attribute(:feature_flag, 1)
          end
          driver.find_element(:id, 'mainframe').find_element(:xpath, 'table/tbody/tr/td/div/form/div/input[2]').click
          p "process（4）"
          # driver.find_element(:name, 'once').click
          p "feature successed!!!"
          feature_result = 1
        rescue => e
          p "feature missed"
          feature_result = 0
        end
      end
      Record.create(
        restaurant_id: gu.restaurant.id,
        new_information: nil,
        feature: feature_result,
        vacancy: nil,
      )
    end
    # ブラウザ終了
    driver.quit
    headless.destroy
  end


  desc "空席サンプル"
  task vacancy: :environment do
    p "Waiting..."
    # ブラウザ起動
    headless = Headless.new
    headless.start
    driver = Selenium::WebDriver.for :chrome

    # 更新時間スケジュールを指定
    guru_updates = Schedule.where(time2330: 1)
    # 更新開始
    # @guru_updates.each do |gu|    # wheneverとの連携時に使用
    guru_updates.each do |gu|
      # 【空席情報】　更新プロセス
      if gu.restaurant.vacancy == 1
        begin
          # ぐるなびproにアクセス
          driver.navigate.to "http://pro.gnavi.co.jp/"
          sleep 3
          # 一度ログアウト
          driver.navigate.to "https://manage.gnavi.co.jp/ShopAdmin/misc/logout.php"
          sleep 3
          # ログイン
          element = driver.find_element(:name, 'id')
          sleep 3
          element.send_keys(gu.restaurant.account)
          element = driver.find_element(:name, 'pass')
          sleep 3
          element.send_keys(gu.restaurant.pass)
          driver.find_element(:name, 'manageImage').click
          sleep 3
          # 空席情報を更新
          driver.find_element(:id, 'a_seat3').click
          # ポップアップを処理
          sleep 3
          alert = driver.switch_to.alert
          alert.accept
          p "vacancy successed!!!"
          vacancy_result = 1
        rescue => e
          p "vacancy missed"
          vacancy_result = 0
        end
      end
      Record.create(
        restaurant_id: gu.restaurant.id,
        new_information: nil,
        feature: nil,
        vacancy: vacancy_result,
      )
    end
    # ブラウザ終了
    driver.quit
    headless.destroy
  end


  desc "（食べログ）更新サンプル"
  task taberog: :environment do
    p "Waiting..."
    # ブラウザ起動
    headless = Headless.new
    headless.start
    driver = Selenium::WebDriver.for :chrome

    # 更新時間スケジュールを指定
    guru_updates = Schedule.where(time2330: 1)
    # 更新開始
    # @guru_updates.each do |gu|    # wheneverとの連携時に使用
    guru_updates.each do |gu|
      # 【食べログ空席】　更新プロセス
      if gu.restaurant.feature == 1
        begin
          # 一度ログアウト
          driver.navigate.to "https://ssl.tabelog.com/owner_account/logout/"
          sleep 3
          # 食べログ管理にアクセス
          driver.navigate.to "https://ssl.tabelog.com/owner_account/login/"
          sleep 3
          # ログイン
          element = driver.find_element(:name, 'login_id')
          element.send_keys(gu.restaurant.account)
          element = driver.find_element(:name, 'password')
          element.send_keys(gu.restaurant.pass)
          driver.find_element(:name, 'manageImage').click
          driver.find_element(:class, 'button').find_element(:xpath, 'input[1]').click
          sleep 3
          # 店舗を選択
          driver.find_element(:class, 'button').click
          # 空席情報を更新

          # 現状確認できないため保留


          p "taberog successed!!!"
          vacancy_result = 1
        rescue => e
          p "taberog missed"
          vacancy_result = 0
        end
      end
      Record.create(
        restaurant_id: gu.restaurant.id,
        new_information: nil,
        feature: nil,
        vacancy: vacancy_result,
      )
    end
    # ブラウザ終了
    driver.quit
    headless.destroy
  end
end
