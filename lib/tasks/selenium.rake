namespace :selenium do
  desc "サンプル"
  task sample: :environment do
    p "Waiting..."
    # ブラウザ起動
    # :chrome, :firefox, :safari, :ie, :operaなどに変更可能
    headless = Headless.new
    headless.start
    driver = Selenium::WebDriver.for :chrome

    # Googleにアクセス
    driver.navigate.to "http://google.com"

    # HTMLページの操作・解析をごにょごにょ
    p driver.title
    p "successed!!!"
    # ブラウザ終了
    driver.quit
    headless.destroy
  end
end
