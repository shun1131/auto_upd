set :output, "log/crontab.log"

# 実行環境の設定
set :environment, :production


# 15分毎に特集と最新情報を更新
every 1.day, at: '23:30' do
  @guru_updates = Schedule.where(time2330: 1)
  rake 'selenium:double_update'
end

# 15分毎に特集と最新情報を更新
every 1.day, at: '23:45' do
  @guru_updates = Schedule.where(time2345: 1)
  rake 'selenium:double_update'
end

# 15分毎に特集と最新情報を更新
every 1.day, at: '0:00' do
  @guru_updates = Schedule.where(time0000: 1)
  rake 'selenium:double_update'
end

# 決まった時間に空席情報を更新
every 1.day, at: '9:00' do
  rake 'selenium:vacancy'
end
