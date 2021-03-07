require "date"
d = Date.today
Random.rand(0..35)

#メインのサンプルユーザを一人作成する
Circle.create!(name: "雷門中サッカー部",
               email: "example@railstutorial.org",
               password: "foobar",
               password_confirmation: "foobar",
               genre: 5,
               place: "雷門中学校",
               frequency: "週8",
               sex: 7,
               introduction: "サッカーやろうぜ！",
               event: "毎日グランドでサッカーやってます！",
               sns: "https://www.inazuma.jp/",
               admin: true,
               activated: true,
               activated_at: Time.zone.now)

#テニスサークル genre:0
Circle.create!(name: "LemonSquash",
               email: "#{Random.rand(0..10000000000)}example@railstutorial.org",
               password: "foobar",
               password_confirmation: "foobar",
               genre: 0,
               place: "学生会館#{Random.rand(1..9)}#{Random.rand(1..9)}#{Random.rand(1..9)}",
               frequency: "週#{Random.rand(1..8)}回活動",
               sex: "#{Random.rand(0..10)}",
               introduction: "テニス大好き！な人募集中！",
               event: "土曜日に京都御所でテニスしてるよ！",
               sns: 'https://www.inazuma.jp/',
               admin: true,
               activated: true,
               activated_at: Time.zone.now)

Circle.create!(name: "IMPERIAL",
               email: "#{Random.rand(0..10000000000)}example@railstutorial.org",
               password: "foobar",
               password_confirmation: "foobar",
               genre: 0,
               place: "学生会館#{Random.rand(1..9)}#{Random.rand(1..9)}#{Random.rand(1..9)}",
               frequency: "週#{Random.rand(1..8)}回活動しています！",
               sex: "#{Random.rand(0..10)}",
               introduction: "テニス強い人多いよ！ガチ勢ウェルカム！",
               event: "月イチで飲み会開催！",
               sns: 'https://www.inazuma.jp/',
               admin: true,
               activated: true,
               activated_at: Time.zone.now)               
  

#ダンス genre:1
Circle.create!(name: "Mimi_allure",
               email: "#{Random.rand(0..10000000000)}example@railstutorial.org",
               password: "foobar",
               password_confirmation: "foobar",
               genre: 1,
               place: "学生会館#{Random.rand(1..9)}#{Random.rand(1..9)}#{Random.rand(1..9)}",
               frequency: "週#{Random.rand(1..8)}",
               sex: "#{Random.rand(0..10)}",
               introduction: "踊りまくりたい人募集中！",
               event: "飲み会は全くありません！ストイックです！",
               sns: 'https://www.inazuma.jp/',
               admin: true,
               activated: true,
               activated_at: Time.zone.now)

#イベサー genre:2
Circle.create!(name: "Knit!",
               email: "#{Random.rand(0..10000000000)}example@railstutorial.org",
               password: "foobar",
               password_confirmation: "foobar",
               genre: 2,
               place: "学生会館#{Random.rand(1..9)}#{Random.rand(1..9)}#{Random.rand(1..9)}",
               frequency: "週#{Random.rand(1..8)}",
               sex: "#{Random.rand(0..10)}",
               introduction: "いろんなイベントがあります！",
               event: "飲み会もいっぱいあるよ！",
               sns: 'https://www.inazuma.jp/',
               admin: true,
               activated: true,
               activated_at: Time.zone.now)

#軽音 3
Circle.create!(name: "cock10",
               email: "#{Random.rand(0..10000000000)}example@railstutorial.org",
               password: "foobar",
               password_confirmation: "foobar",
               genre: 3,
               place: "学生会館#{Random.rand(1..9)}#{Random.rand(1..9)}#{Random.rand(1..9)}",
               frequency: "週#{Random.rand(1..8)}",
               sex: "#{Random.rand(0..10)}",
               introduction: "バンドしたい人どうぞ！！",
               event: "飲み会もいっぱいあるよ！",
               sns: 'https://www.inazuma.jp/',
               admin: true,
               activated: true,
               activated_at: Time.zone.now)

#ボランティア 4
Circle.create!(name: "Shinmachi_Activate_Project",
               email: "#{Random.rand(0..10000000000)}example@railstutorial.org",
               password: "foobar",
               password_confirmation: "foobar",
               genre: 4,
               place: "学生会館#{Random.rand(1..9)}#{Random.rand(1..9)}#{Random.rand(1..9)}",
               frequency: "週#{Random.rand(1..8)}",
               sex: "#{Random.rand(0..10)}",
               introduction: "奉仕精神のある人がむいてるよ！",
               event: "飲み会もいっぱいあるよ！",
               sns: 'https://www.inazuma.jp/',
               admin: true,
               activated: true,
               activated_at: Time.zone.now)

#サッカー 5
Circle.create!(name: "LiBeRtA",
               email: "#{Random.rand(0..10000000000)}example@railstutorial.org",
               password: "foobar",
               password_confirmation: "foobar",
               genre: 5,
               place: "学生会館#{Random.rand(1..9)}#{Random.rand(1..9)}#{Random.rand(1..9)}",
               frequency: "週#{Random.rand(1..8)}",
               sex: "#{Random.rand(0..10)}",
               introduction: "サッカーやろうぜ！",
               event: "飲み会もいっぱいあるよ！",
               sns: 'https://www.inazuma.jp/',
               admin: true,
               activated: true,
               activated_at: Time.zone.now)

#フットサル 6
Circle.create!(name: "FC無問題",
               email: "#{Random.rand(0..10000000000)}example@railstutorial.org",
               password: "foobar",
               password_confirmation: "foobar",
               genre: 6,
               place: "学生会館#{Random.rand(1..9)}#{Random.rand(1..9)}#{Random.rand(1..9)}",
               frequency: "週#{Random.rand(1..8)}",
               sex: "#{Random.rand(0..10)}",
               introduction: "フットサルしまくろう！",
               event: "飲み会もいっぱいあるよ！",
               sns: 'https://www.inazuma.jp/',
               admin: true,
               activated: true,
               activated_at: Time.zone.now)

#野球 7
Circle.create!(name: "MALTS",
               email: "#{Random.rand(0..10000000000)}example@railstutorial.org",
               password: "foobar",
               password_confirmation: "foobar",
               genre: 7,
               place: "学生会館#{Random.rand(1..9)}#{Random.rand(1..9)}#{Random.rand(1..9)}",
               frequency: "週#{Random.rand(1..8)}",
               sex: "#{Random.rand(0..10)}",
               introduction: "元野球部求む！！",
               event: "飲み会もいっぱいあるよ！",
               sns: 'https://www.inazuma.jp/',
               admin: true,
               activated: true,
               activated_at: Time.zone.now)

#バスケ 8
Circle.create!(name: "LEOPARD",
               email: "#{Random.rand(0..10000000000)}example@railstutorial.org",
               password: "foobar",
               password_confirmation: "foobar",
               genre: 8,
               place: "学生会館#{Random.rand(1..9)}#{Random.rand(1..9)}#{Random.rand(1..9)}",
               frequency: "週#{Random.rand(1..8)}",
               sex: "#{Random.rand(0..10)}",
               introduction: "諦めたらそこで試合終了ですよ",
               event: "飲み会もいっぱいあるよ！",
               sns: 'https://www.inazuma.jp/',
               admin: true,
               activated: true,
               activated_at: Time.zone.now)

#バレーボール 9
Circle.create!(name: "Hands-Up!",
               email: "#{Random.rand(0..10000000000)}example@railstutorial.org",
               password: "foobar",
               password_confirmation: "foobar",
               genre: 9,
               place: "学生会館#{Random.rand(1..9)}#{Random.rand(1..9)}#{Random.rand(1..9)}",
               frequency: "週#{Random.rand(1..8)}",
               sex: "#{Random.rand(0..10)}",
               introduction: "バレーボール大会を目指して頑張ってます！",
               event: "飲み会もいっぱいあるよ！",
               sns: 'https://www.inazuma.jp/',
               admin: true,
               activated: true,
               activated_at: Time.zone.now)
#チア 10
Circle.create!(name: "SWEETiEZ",
               email: "#{Random.rand(0..10000000000)}example@railstutorial.org",
               password: "foobar",
               password_confirmation: "foobar",
               genre: 10,
               place: "学生会館#{Random.rand(1..9)}#{Random.rand(1..9)}#{Random.rand(1..9)}",
               frequency: "週#{Random.rand(1..8)}",
               sex: "#{Random.rand(0..10)}",
               introduction: "チアガールになりたい人おいで！",
               event: "飲み会もいっぱいあるよ！",
               sns: 'https://www.inazuma.jp/',
               admin: true,
               activated: true,
               activated_at: Time.zone.now)

#バドミントン
Circle.create!(name: "BACCANO",
               email: "#{Random.rand(0..10000000000)}example@railstutorial.org",
               password: "foobar",
               password_confirmation: "foobar",
               genre: 12,
               place: "学生会館#{Random.rand(1..9)}#{Random.rand(1..9)}#{Random.rand(1..9)}",
               frequency: "週#{Random.rand(1..8)}",
               sex: "#{Random.rand(0..10)}",
               introduction: "バド初心者でもwelcome！",
               event: "飲み会もいっぱいあるよ！",
               sns: 'https://www.inazuma.jp/',
               admin: true,
               activated: true,
               activated_at: Time.zone.now)

#スキューバ
Circle.create!(name: "Drive In Blue",
               email: "#{Random.rand(0..10000000000)}example@railstutorial.org",
               password: "foobar",
               password_confirmation: "foobar",
               genre: 13,
               place: "学生会館#{Random.rand(1..9)}#{Random.rand(1..9)}#{Random.rand(1..9)}",
               frequency: "週#{Random.rand(1..8)}",
               sex: "#{Random.rand(0..10)}",
               introduction: "潜りたい人！！",
               event: "飲み会もいっぱいあるよ！",
               sns: 'https://www.inazuma.jp/',
               admin: true,
               activated: true,
               activated_at: Time.zone.now)

#ハンドボール
Circle.create!(name: "FUSIRAD",
               email: "#{Random.rand(0..10000000000)}example@railstutorial.org",
               password: "foobar",
               password_confirmation: "foobar",
               genre: 15,
               place: "学生会館#{Random.rand(1..9)}#{Random.rand(1..9)}#{Random.rand(1..9)}",
               frequency: "週#{Random.rand(1..8)}",
               sex: "#{Random.rand(0..10)}",
               introduction: "ハンドボールいっぱいできるよ！",
               event: "飲み会もいっぱいあるよ！",
               sns: 'https://www.inazuma.jp/',
               admin: true,
               activated: true,
               activated_at: Time.zone.now)

#バレエ
#合気道
#スノボ
#クリケット
#陸上
#ラケットボール
#総合格闘技
#合唱
#器楽
#伝統芸能
#芸能文化
#メディア
#映像
#社会科学研究
#文化系その他
#人文科学研究
#表現
#DJ