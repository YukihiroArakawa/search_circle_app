require "date"
d = Date.today
Random.rand(0..35)

#サークルのジャンルは全てで36種類
Genre.create!(id:0,name:"テニス")
Genre.create!(name:"ダンス")
Genre.create!(name:"イベント系")
Genre.create!(name:"軽音")
Genre.create!(name:"ボランティア")
Genre.create!(name:"サッカー")
Genre.create!(name:"フットサル")
Genre.create!(name:"野球")
Genre.create!(name:"バスケ")
Genre.create!(name:"バレーボール")

Genre.create!(name:"チア")
Genre.create!(name:"スキー")
Genre.create!(name:"バドミントン")
Genre.create!(name:"スキューバ")
Genre.create!(name:"ハンドボール")
Genre.create!(name:"バレエ")
Genre.create!(name:"合気道")
Genre.create!(name:"スノボ")
Genre.create!(name:"クリケット")
Genre.create!(name:"陸上")

Genre.create!(name:"ラケットボール")
Genre.create!(name:"総合格闘技")
Genre.create!(name:"合唱")
Genre.create!(name:"器楽")
Genre.create!(name:"伝統芸能")
Genre.create!(name:"芸能文化")
Genre.create!(name:"メディア")
Genre.create!(name:"写真")
Genre.create!(name:"映像")
Genre.create!(name:"社会科学研究")

Genre.create!(name:"応援団")
Genre.create!(name:"文化系その他")
Genre.create!(name:"芸術")
Genre.create!(name:"自然科学研究")
Genre.create!(name:"人文科学研究")
Genre.create!(name:"表現")
Genre.create!(name:"DJ")

#サークルのデモデータ
Circle.create!(name: "雷門中サッカー部",
               email: "example@railstutorial.org",
               password: "foobar",
               password_confirmation: "foobar",
               genre_id: 5,
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
               genre_id: 0,
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
               genre_id: 0,
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
               genre_id: 1,
               place: "学生会館#{Random.rand(1..9)}#{Random.rand(1..9)}#{Random.rand(1..9)}",
               frequency: "週#{Random.rand(1..8)}",
               sex: "#{Random.rand(0..10)}",
               introduction: "踊りまくりたい人募集中！",
               event: "飲み会は全くありません！ストイックです！",
               sns: 'https://www.inazuma.jp/',
               admin: true,
               activated: true,
               activated_at: Time.zone.now)

#イベント系 genre:2
Circle.create!(name: "Knit!",
               email: "#{Random.rand(0..10000000000)}example@railstutorial.org",
               password: "foobar",
               password_confirmation: "foobar",
               genre_id: 2,
               place: "学生会館#{Random.rand(1..9)}#{Random.rand(1..9)}#{Random.rand(1..9)}",
               frequency: "週#{Random.rand(1..8)}",
               sex: "#{Random.rand(0..10)}",
               introduction: "いろんなイベントがあります！",
               event: "飲み会もいっぱいあるよ！",
               sns: 'https://www.inazuma.jp/',
               admin: true,
               activated: true,
               activated_at: Time.zone.now)

#軽音 genre:3
Circle.create!(name: "cock10",
               email: "#{Random.rand(0..10000000000)}example@railstutorial.org",
               password: "foobar",
               password_confirmation: "foobar",
               genre_id: 3,
               place: "学生会館#{Random.rand(1..9)}#{Random.rand(1..9)}#{Random.rand(1..9)}",
               frequency: "週#{Random.rand(1..8)}",
               sex: "#{Random.rand(0..10)}",
               introduction: "バンドしたい人どうぞ！！",
               event: "飲み会もいっぱいあるよ！",
               sns: 'https://www.inazuma.jp/',
               admin: true,
               activated: true,
               activated_at: Time.zone.now)

#ボランティア genre:4
Circle.create!(name: "Shinmachi_Activate_Project",
               email: "#{Random.rand(0..10000000000)}example@railstutorial.org",
               password: "foobar",
               password_confirmation: "foobar",
               genre_id: 4,
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
               genre_id: 5,
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
               genre_id: 6,
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
               genre_id: 7,
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
               genre_id: 8,
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
               genre_id: 9,
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
               genre_id: 10,
               place: "学生会館#{Random.rand(1..9)}#{Random.rand(1..9)}#{Random.rand(1..9)}",
               frequency: "週#{Random.rand(1..8)}",
               sex: "#{Random.rand(0..10)}",
               introduction: "チアガールになりたい人おいで！",
               event: "飲み会もいっぱいあるよ！",
               sns: 'https://www.inazuma.jp/',
               admin: true,
               activated: true,
               activated_at: Time.zone.now)

#スキー 11


#バドミントン 12
Circle.create!(name: "BACCANO",
               email: "#{Random.rand(0..10000000000)}example@railstutorial.org",
               password: "foobar",
               password_confirmation: "foobar",
               genre_id: 11,
               place: "学生会館#{Random.rand(1..9)}#{Random.rand(1..9)}#{Random.rand(1..9)}",
               frequency: "週#{Random.rand(1..8)}",
               sex: "#{Random.rand(0..10)}",
               introduction: "バド初心者でもwelcome！",
               event: "飲み会もいっぱいあるよ！",
               sns: 'https://www.inazuma.jp/',
               admin: true,
               activated: true,
               activated_at: Time.zone.now)

#スキューバ 13
Circle.create!(name: "Drive In Blue",
               email: "#{Random.rand(0..10000000000)}example@railstutorial.org",
               password: "foobar",
               password_confirmation: "foobar",
               genre_id: 12,
               place: "学生会館#{Random.rand(1..9)}#{Random.rand(1..9)}#{Random.rand(1..9)}",
               frequency: "週#{Random.rand(1..8)}",
               sex: "#{Random.rand(0..10)}",
               introduction: "潜りたい人！！",
               event: "飲み会もいっぱいあるよ！",
               sns: 'https://www.inazuma.jp/',
               admin: true,
               activated: true,
               activated_at: Time.zone.now)

#ハンドボール 14
Circle.create!(name: "FUSIRAD",
               email: "#{Random.rand(0..10000000000)}example@railstutorial.org",
               password: "foobar",
               password_confirmation: "foobar",
               genre_id: 13,
               place: "学生会館#{Random.rand(1..9)}#{Random.rand(1..9)}#{Random.rand(1..9)}",
               frequency: "週#{Random.rand(1..8)}",
               sex: "#{Random.rand(0..10)}",
               introduction: "ハンドボールいっぱいできるよ！",
               event: "飲み会もいっぱいあるよ！",
               sns: 'https://www.inazuma.jp/',
               admin: true,
               activated: true,
               activated_at: Time.zone.now)

#バレエ 15
Circle.create!(name: "PRITTS",
               email: "#{Random.rand(0..10000000000)}example@railstutorial.org",
               password: "foobar",
               password_confirmation: "foobar",
               genre_id: 15,
               place: "学生会館#{Random.rand(1..9)}#{Random.rand(1..9)}#{Random.rand(1..9)}",
               frequency: "週#{Random.rand(1..8)}",
               sex: "#{Random.rand(0..10)}",
               introduction: "バレエをやりたい人大歓迎！",
               event: "体験会実施中！",
               sns: 'https://www.inazuma.jp/',
               admin: true,
               activated: true,
               activated_at: Time.zone.now)


#合気道 16
Circle.create!(name: "同志社大学合気道同好会",
               email: "#{Random.rand(0..10000000000)}example@railstutorial.org",
               password: "foobar",
               password_confirmation: "foobar",
               genre_id: 16,
               place: "学生会館#{Random.rand(1..5)}#{Random.rand(1..9)}#{Random.rand(1..9)}",
               frequency: "週#{Random.rand(1..8)}",
               sex: "#{Random.rand(0..10)}",
               introduction: "護身術を学びたい女子もどうぞ！",
               event: "イベント盛り沢山だよ！",
               sns: 'https://www.inazuma.jp/',
               admin: true,
               activated: true,
               activated_at: Time.zone.now)

#スノボ 17
Circle.create!(name: "ハビッツ",
               email: "#{Random.rand(0..10000000000)}example@railstutorial.org",
               password: "foobar",
               password_confirmation: "foobar",
               genre_id: 17,
               place: "学生会館#{Random.rand(1..9)}#{Random.rand(1..9)}#{Random.rand(1..9)}",
               frequency: "週#{Random.rand(1..8)}",
               sex: "#{Random.rand(0..10)}",
               introduction: "雪好きあつまれええ！",
               event: "飲み会もいっぱいあるよ！",
               sns: 'https://www.inazuma.jp/',
               admin: true,
               activated: true,
               activated_at: Time.zone.now)

#クリケット 18
Circle.create!(name: "同志社クリケットサークル",
               email: "#{Random.rand(0..10000000000)}example@railstutorial.org",
               password: "foobar",
               password_confirmation: "foobar",
               genre_id: 18,
               place: "学生会館#{Random.rand(1..5)}#{Random.rand(1..9)}#{Random.rand(1..9)}",
               frequency: "週#{Random.rand(1..8)}",
               sex: "#{Random.rand(0..10)}",
               introduction: "クリケットって何？って人は連絡ください！",
               event: "飲み会もいっぱいあるよ！",
               sns: 'https://www.inazuma.jp/',
               admin: true,
               activated: true,
               activated_at: Time.zone.now)

#陸上 19
Circle.create!(name: "同志社陸上競技同好会クローバー会",
               email: "#{Random.rand(0..10000000000)}example@railstutorial.org",
               password: "foobar",
               password_confirmation: "foobar",
               genre_id: 19,
               place: "学生会館#{Random.rand(1..9)}#{Random.rand(1..9)}#{Random.rand(1..9)}",
               frequency: "週#{Random.rand(1..8)}",
               sex: "#{Random.rand(0..10)}",
               introduction: "陸上好きあつまれ",
               event: "毎日走ってます",
               sns: 'https://www.inazuma.jp/',
               admin: true,
               activated: true,
               activated_at: Time.zone.now)

#ラケットボール 20
Circle.create!(name: "Little-Goose",
               email: "#{Random.rand(0..10000000000)}example@railstutorial.org",
               password: "foobar",
               password_confirmation: "foobar",
               genre_id: 20,
               place: "学生会館#{Random.rand(1..9)}#{Random.rand(1..9)}#{Random.rand(1..9)}",
               frequency: "週#{Random.rand(1..8)}",
               sex: "#{Random.rand(0..10)}",
               introduction: "ラケットボールになります",
               event: "飲み会もいっぱいあるよ！",
               sns: 'https://www.inazuma.jp/',
               admin: true,
               activated: true,
               activated_at: Time.zone.now)


#総合格闘技 21
Circle.create!(name: "Giorno",
               email: "#{Random.rand(0..10000000000)}example@railstutorial.org",
               password: "foobar",
               password_confirmation: "foobar",
               genre_id: 21,
               place: "学生会館#{Random.rand(1..9)}#{Random.rand(1..9)}#{Random.rand(1..9)}",
               frequency: "週#{Random.rand(1..8)}",
               sex: "#{Random.rand(0..10)}",
               introduction: "Rizin好きwelcome！",
               event: "飲み会もいっぱいあるよ！",
               sns: 'https://www.inazuma.jp/',
               admin: true,
               activated: true,
               activated_at: Time.zone.now)

#合唱 22
Circle.create!(name: "コールメイプル",
               email: "#{Random.rand(0..10000000000)}example@railstutorial.org",
               password: "foobar",
               password_confirmation: "foobar",
               genre_id: 22,
               place: "学生会館#{Random.rand(1..9)}#{Random.rand(1..9)}#{Random.rand(1..9)}",
               frequency: "週#{Random.rand(1..8)}",
               sex: "#{Random.rand(0..10)}",
               introduction: "合唱を本気でやりたい人おいで！",
               event: "飲み会もいっぱいあるよ！",
               sns: 'https://www.inazuma.jp/',
               admin: true,
               activated: true,
               activated_at: Time.zone.now)

#器楽 23
Circle.create!(name: "radio_Naut",
               email: "#{Random.rand(0..10000000000)}example@railstutorial.org",
               password: "foobar",
               password_confirmation: "foobar",
               genre_id: 23,
               place: "学生会館#{Random.rand(1..9)}#{Random.rand(1..9)}#{Random.rand(1..9)}",
               frequency: "週#{Random.rand(1..8)}",
               sex: "#{Random.rand(0..10)}",
               introduction: "音楽好きおいでぇ〜",
               event: "飲み会もいっぱいあるよ！",
               sns: 'https://www.inazuma.jp/',
               admin: true,
               activated: true,
               activated_at: Time.zone.now)

#伝統芸能 24
Circle.create!(name: "小笠原流煎茶道道風会",
               email: "#{Random.rand(0..10000000000)}example@railstutorial.org",
               password: "foobar",
               password_confirmation: "foobar",
               genre_id: 24,
               place: "学生会館#{Random.rand(1..9)}#{Random.rand(1..9)}#{Random.rand(1..9)}",
               frequency: "週#{Random.rand(1..8)}",
               sex: "#{Random.rand(0..10)}",
               introduction: "茶道好きは集まれ！",
               event: "飲み会もいっぱいあるよ！",
               sns: 'https://www.inazuma.jp/',
               admin: true,
               activated: true,
               activated_at: Time.zone.now)

#芸能文化 25
Circle.create!(name: "同志社大学短歌会",
               email: "#{Random.rand(0..10000000000)}example@railstutorial.org",
               password: "foobar",
               password_confirmation: "foobar",
               genre_id: 25,
               place: "学生会館#{Random.rand(1..9)}#{Random.rand(1..9)}#{Random.rand(1..9)}",
               frequency: "週#{Random.rand(1..8)}",
               sex: "#{Random.rand(0..10)}",
               introduction: "伝統的な短歌の世界に触れませんか",
               event: "飲み会もいっぱいあるよ！",
               sns: 'https://www.inazuma.jp/',
               admin: true,
               activated: true,
               activated_at: Time.zone.now)


#メディア 26
Circle.create!(name: "人権問題研究団体Pecorino",
               email: "#{Random.rand(0..10000000000)}example@railstutorial.org",
               password: "foobar",
               password_confirmation: "foobar",
               genre_id: 26,
               place: "学生会館#{Random.rand(1..9)}#{Random.rand(1..9)}#{Random.rand(1..9)}",
               frequency: "週#{Random.rand(1..8)}",
               sex: "#{Random.rand(0..10)}",
               introduction: "人権について考えませんか",
               event: "飲み会もいっぱいあるよ！",
               sns: 'https://www.inazuma.jp/',
               admin: true,
               activated: true,
               activated_at: Time.zone.now)

#写真 27

#映像 28
Circle.create!(name: "同志社ラブライブ部",
               email: "#{Random.rand(0..10000000000)}example@railstutorial.org",
               password: "foobar",
               password_confirmation: "foobar",
               genre_id: 28,
               place: "学生会館#{Random.rand(1..9)}#{Random.rand(1..9)}#{Random.rand(1..9)}",
               frequency: "週#{Random.rand(1..8)}",
               sex: "#{Random.rand(0..10)}",
               introduction: "ラブライブ好き集まって！",
               event: "飲み会もいっぱいあるよ！",
               sns: 'https://www.inazuma.jp/',
               admin: true,
               activated: true,
               activated_at: Time.zone.now)

#社会科学研究 29
Circle.create!(name: "Meilka同志社",
               email: "#{Random.rand(0..10000000000)}example@railstutorial.org",
               password: "foobar",
               password_confirmation: "foobar",
               genre_id: 29,
               place: "学生会館#{Random.rand(1..9)}#{Random.rand(1..9)}#{Random.rand(1..9)}",
               frequency: "週#{Random.rand(1..8)}",
               sex: "#{Random.rand(0..10)}",
               introduction: "社会科学を考えませんか？",
               event: "飲み会もいっぱいあるよ！",
               sns: 'https://www.inazuma.jp/',
               admin: true,
               activated: true,
               activated_at: Time.zone.now)

#応援団 30

#文化系その他 31
Circle.create!(name: "同志社バイクサークルAir",
               email: "#{Random.rand(0..10000000000)}example@railstutorial.org",
               password: "foobar",
               password_confirmation: "foobar",
               genre_id: 31,
               place: "学生会館#{Random.rand(1..9)}#{Random.rand(1..9)}#{Random.rand(1..9)}",
               frequency: "週#{Random.rand(1..8)}",
               sex: "#{Random.rand(0..10)}",
               introduction: "バイク好きあつまれ！",
               event: "飲み会もいっぱいあるよ！",
               sns: 'https://www.inazuma.jp/',
               admin: true,
               activated: true,
               activated_at: Time.zone.now)

#芸術 32 



#自然科学研究 33


#人文科学研究 34
Circle.create!(name: "同志社大学KGKイエス会",
               email: "#{Random.rand(0..10000000000)}example@railstutorial.org",
               password: "foobar",
               password_confirmation: "foobar",
               genre_id: 34,
               place: "学生会館#{Random.rand(1..9)}#{Random.rand(1..9)}#{Random.rand(1..9)}",
               frequency: "週#{Random.rand(1..8)}",
               sex: "#{Random.rand(0..10)}",
               introduction: "ハンドボールいっぱいできるよ！",
               event: "飲み会もいっぱいあるよ！",
               sns: 'https://www.inazuma.jp/',
               admin: true,
               activated: true,
               activated_at: Time.zone.now)
#表現 35
Circle.create!(name: "同志社大学落語研究会",
               email: "#{Random.rand(0..10000000000)}example@railstutorial.org",
               password: "foobar",
               password_confirmation: "foobar",
               genre_id: 35,
               place: "学生会館#{Random.rand(1..9)}#{Random.rand(1..9)}#{Random.rand(1..9)}",
               frequency: "週#{Random.rand(1..8)}",
               sex: "#{Random.rand(0..10)}",
               introduction: "ハンドボールいっぱいできるよ！",
               event: "飲み会もいっぱいあるよ！",
               sns: 'https://www.inazuma.jp/',
               admin: true,
               activated: true,
               activated_at: Time.zone.now)

#DJ 36
Circle.create!(name: "同志社大学音楽研究会",
               email: "#{Random.rand(0..10000000000)}example@railstutorial.org",
               password: "foobar",
               password_confirmation: "foobar",
               genre_id: 36,
               place: "学生会館#{Random.rand(1..9)}#{Random.rand(1..9)}#{Random.rand(1..9)}",
               frequency: "週#{Random.rand(1..8)}",
               sex: "#{Random.rand(0..10)}",
               introduction: "DJしたいひとあつまれい！",
               event: "飲み会もいっぱいあるよ！",
               sns: 'https://www.inazuma.jp/',
               admin: true,
               activated: true,
               activated_at: Time.zone.now)