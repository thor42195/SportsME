Event.seed do |s|
  s.id = 1
  s.title = "初心者から始めるカヌーの楽しみ方"
  s.content = "カヌーって難しいイメージがあると思いますが、実はコツを掴めばそれほど大変ではありません。一緒に、カヌーを楽しみませんか？"
  s.place = "OO公園"
  s.number = 10
  s.image = Rails.root.join("db/fixtures/images/image2.jpg").open
  s.startdate = "2018-10-18"
  s.starttime = "11:00:00"
  s.enddate = "2019-10-18"
  s.endtime = "5:00:00"
  s.duedate = "2018-9-29"
  s.duetime = "00:00:00"
  s.organizer_id = 1
  s.created_at = "2018-06-10 00:20:00"
  s.updated_at = "2018-10-15 00:20:00"
end

Event.seed do |s|
  s.id = 2
  s.title = "わいわいサッカー"
  s.content = "秋といえばスポーツの秋。みんなで楽しくサッカーをやって、いい汗をかきませんか？サッカーの後には懇親会も用意しています。"
  s.place = "OO公園"
  s.number = 20
  s.image = Rails.root.join("db/fixtures/images/image4.jpg").open
  s.startdate = "2018-10-18"
  s.starttime = "11:00:00"
  s.enddate = "2019-10-18"
  s.endtime = "5:00:00"
  s.duedate = "2018-9-29"
  s.duetime = "00:00:00"
  s.organizer_id = 1
  s.created_at = "2018-06-10 00:20:00"
  s.updated_at = "2018-10-15 00:20:00"
end

Event.seed do |s|
  s.id = 3
  s.title = "初心者歓迎〜野球を知ろう〜"
  s.content = "野球に興味がある初心者を対象に、ワークショップを開きます。"
  s.place = "OO公園"
  s.number = 10
  s.image = Rails.root.join("db/fixtures/images/image1.jpg").open
  s.startdate = "2019-12-18"
  s.starttime = "11:00:00"
  s.enddate = "2019-12-18"
  s.endtime = "15:00:00"
  s.duedate = "2018-9-29"
  s.duetime = "00:00:00"
  s.organizer_id = 2
  s.created_at = "2018-06-10 00:20:00"
  s.updated_at = "2018-10-15 00:20:00"
end

Event.seed do |s|
  s.id = 4
  s.title = "体幹ワークショップ"
  s.content = "体の歪みが気になってきた人やこれからスポーツを始めたい人向けにオススメの体幹トレーニングを教えます。"
  s.place = "OOヨガ教室 渋谷店"
  s.number = 5
  s.image = Rails.root.join("db/fixtures/images/image3.jpg").open
  s.startdate = "2019-12-20"
  s.starttime = "11:00:00"
  s.enddate = "2019-12-20"
  s.endtime = "15:00:00"
  s.duedate = "2018-9-29"
  s.duetime = "00:00:00"
  s.organizer_id = 2
  s.created_at = "2018-06-10 00:20:00"
  s.updated_at = "2018-10-15 00:20:00"
end

Event.seed do |s|
  s.id = 5
  s.title = "中級者向け ~ヒルクライムをしよう~"
  s.content = "ヒルクライムの大会に向けて、練習したい人向けに、合同練習の機会を設けました。ぜひ一緒に練習しませんか？"
  s.place = "OO山"
  s.number = 5
  s.image = Rails.root.join("db/fixtures/images/image5.jpg").open
  s.startdate = "2019-9-18"
  s.starttime = "11:00:00"
  s.enddate = "2019-9-18"
  s.endtime = "15:00:00"
  s.duedate = "2019-9-10"
  s.duetime = "00:00:00"
  s.organizer_id = 3
  s.created_at = "2018-06-10 00:20:00"
  s.updated_at = "2018-10-15 00:20:00"
end
Event.seed do |s|
  s.id = 6
  s.title = "ゴルフ体験ツアー"
  s.content = "ゴルフをやってみたいけど、何から始めたらわからない。そんな人向けに、体験ツアーを用意しました。"
  s.place = "OOゴルフ場"
  s.number = 10
  s.image = Rails.root.join("db/fixtures/images/image6.jpg").open
  s.startdate = "2019-6-18"
  s.starttime = "11:00:00"
  s.enddate = "2019-6-18"
  s.endtime = "15:00:00"
  s.duedate = "2019-3-10"
  s.duetime = "00:00:00"
  s.organizer_id = 3
  s.created_at = "2018-06-10 00:20:00"
  s.updated_at = "2018-10-15 00:20:00"
end
