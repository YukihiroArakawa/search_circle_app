require "date"
d = Date.today

#メインのサンプルユーザを一人作成する
Circle.create!(name: "雷門中サッカー部",
               email: "example@railstutorial.org",
               password: "foobar",
               password_confirmation: "foobar",
               genre: 1,
               place: "良心館1階",
               frequency: "週8",
               sex: 7,
               introduction: "サッカーやろうぜ！",
               event: "毎日グランドでサッカーやってます！",
               sns: "https://www.inazuma.jp/",
               admin: true,
               activated: true,
               activated_at: Time.zone.now)

# 追加のユーザーをまとめて生成する
99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  Circle.create!(name:  name,
               email: email,
               password:password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end
