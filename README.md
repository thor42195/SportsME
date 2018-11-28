## README
  SportsME
## 概要
  スポーツイベントに参加したい人をつなげるマッチングサイト
## コンセプト
  スポーツイベントを通じて繋がる
## バージョン
  Ruby 2.3.7 Rails 5.1.6
## 機能一覧
  ユーザーとイベント主催者で利用できる機能が異なります。

#### <共通>
  - ログイン機能
  - カレンダー機能
  - レビュー機能
    - ユーザーとイベント主催者がそれぞれ評価できる
#### <ユーザー>
  - ユーザー登録機能
    - 名前/メールアドレス/パスワード/好きなスポーツ/性別/自己紹介/アイコン
  - マイページ機能
    - 登録情報/お気に入りしたイベント一覧/興味のあるイベント一覧/友達一覧/チャット履歴を確認できる
  - イベント参加/キャンセル機能
    - ユーザーのみ利用可能
    - 同じイベントに複数の参加ボタンを押すことができない
  - イベントブックマーク機能
    - ユーザーのみ利用可能
    - ユーザが気になっているイベントをマイページから閲覧できる
    - 同じイベントに複数のブックマークはできない
  - イベント検索機能
    - 任意のキーワードでイベントを検索でき、結果を一覧で閲覧できる
  - イベント興味あり機能
    - ユーザーのみ利用可能
    - ユーザーが興味があるイベントを選択できる
    - 興味あるボタンを選択したユーザーは、一覧としてユーザーに見えるようになる
    - 一覧に表示されたユーザには、友達リクエストを送れる
  - 友達リクエスト機能
    - 同じイベントに興味があるユーザーのみ利用可能
    - 気になるユーザーに友達リクエストを送れる
    - リクエストを承認すると、チャットをすることができる
  - コメント機能
  　- イベントに対してコメントできる
  - チャット機能
    - 友達になったユーザーにメッセージを送れる

#### <イベント主催者>
  - イベント主催者（管理者）登録機能
    - 管理者名/メールアドレス/パスワード/所属団体/電話番号/スポーツカテゴリ/自己紹介
  - イベント管理機能（作成/削除/編集）
    - イベント主催者のみ利用可能
    - 作成時に、日程/人数/所要時間/詳細/締め切りを記載する
    - 参加人数を超えての応募はできない
    - イベント参加者を閲覧できる
  - リマインド機能
    - 参加者にリマインドメールを送ることができる

## カタログ設計
https://docs.google.com/spreadsheets/d/1knUeU86Re5VQ7D-sxvUWftO8HOsBcvsiBjHm2jdFVl4/edit?usp=sharing

## テーブル定義
https://docs.google.com/spreadsheets/d/1GVUdjpqyEgeIZQ3feLJVT1it_0iB-yFuWpYuX0yBEMw/edit?usp=sharing

## 画面遷移図
https://docs.google.com/spreadsheets/d/1Pn0-M-Y3UngPEcWnbsGsy4BDrX6edW727-maOg6MqnY/edit?usp=sharing

## 画面ワイヤーフレーム
https://docs.google.com/spreadsheets/d/1BPMjsod_EXpzf8FyxYQhgPgkMqn1BNr_XqzTd0GyaEw/edit?usp=sharing

## 使用予定Gem
  - devise
  - fullcalender
  - momentjs-rails
  - carrerwave
  - mini_magick
  - CanCanCan
  - bootstrap
  - jquery-rails
  - font-awesome-sass
  - seed-fu (for test data)
  - ransack
