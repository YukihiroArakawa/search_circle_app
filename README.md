# 「TownCircle-サークル検索-」(ポートフォリオ)
## アプリの概要
- 「家の中でもサークル探し」をスローガンに,コロナで新歓イベントに行けない大学の新入生のサークル探しを支援するアプリです。
- サークルの検索,質問,ブログの閲覧などができます
- [ポートフォリオのリンク](https://intense-earth-20623.herokuapp.com/)
- デモデータのメールとパスワード
  - メール: example@rails.org
  - パスワード: foobar 

## 使用言語・OSなど
- Ruby 2.6.6
- Ruby on Rails 6.1.3
- SQLite 1.4.1
- Javascript 
- jQuery
- html
- css
- mac OS

## 機能(非機能)一覧
- サークル検索機能...サークル名,ジャンルでサークルを検索可能
- サークル一覧表示機能
- 質問機能...サークルの個別ページから,匿名で質問を投稿することが可能
- ブログ投稿機能...サークルが活動状況などを写真付きで投稿できる機能
- サークル登録機能
- サークルログイン機能(メール認証付き)

## 注力した機能や工夫した点
- 質問機能....ユーザからの質問の内訳を円グラフで表示することで,サークル側がユーザの関心を分析できるようにした点
- メール認証機能...サークル登録時のメールアドレスに、アカウントを有効化するメールを送信して、そのメールのリンクをクリックすることで,アカウントを利用できるようにした点

## デモ画面
- 検索画面
<img width="767" alt="Screen Shot 2021-03-12 at 16 29 27" src="https://user-images.githubusercontent.com/54029373/110907002-1ea9d100-8350-11eb-84bc-e71726a07c89.png">

- 質問画面(ユーザ側)
<img width="778" alt="Screen Shot 2021-03-12 at 16 28 17" src="https://user-images.githubusercontent.com/54029373/110906884-f5894080-834f-11eb-9ffe-75ecdb945918.png">

- 質問画面(サークル側)
<img width="772" alt="Screen Shot 2021-03-12 at 16 27 07" src="https://user-images.githubusercontent.com/54029373/110906790-cc68b000-834f-11eb-97ea-09d2a4e6e807.png">
<img width="750" alt="Screen Shot 2021-03-12 at 16 27 31" src="https://user-images.githubusercontent.com/54029373/110906814-d9859f00-834f-11eb-8385-f8e474becdb0.png">

- ブログ画面(ユーザ側)
<img width="741" alt="Screen Shot 2021-03-12 at 16 33 35" src="https://user-images.githubusercontent.com/54029373/110907419-b3acca00-8350-11eb-88c7-da95f41f7484.png">

- ブログ画面(サークル側)
<img width="755" alt="Screen Shot 2021-03-12 at 16 34 05" src="https://user-images.githubusercontent.com/54029373/110907457-c45d4000-8350-11eb-828b-35eee20718a1.png">

## 注意点
## 使い方(環境構築の手順)
このアプリケーションを動かす場合は、まずはリポジトリを手元にクローンしてください。
その後、次のコマンドで必要になる RubyGems をインストールします。

```
$ bundle install --without production
```

その後、データベースへのマイグレーションを実行します。

```
$ rails db:migrate
```

最後に、テストを実行してうまく動いているかどうか確認してください。

```
$ rails test
```

テストが無事に通ったら、Railsサーバーを立ち上げる準備が整っているはずです。

```
$ rails server
```

詳しくは、[*Ruby on Rails チュートリアル*](https://railstutorial.jp/)
を参考にしてください。
