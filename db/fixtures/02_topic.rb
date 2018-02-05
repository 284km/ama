Topic.seed do |t|
  t.id      = 1
  t.user_id = 1
  t.title   = "[基調Q&A] これからの Ruby on Rails"
  t.description = <<~TEXT
    Railsコミッター
    松田 明 氏・上薗 竜太 氏・y-yagi 氏

    これからの Ruby on Rails について、参加者から事前に募った質問に、Railsコミッターよりご回答いただきます（モデレーター: 前島 真一 氏）
  TEXT
end

Topic.seed do |t|
  t.id      = 2
  t.user_id = 1
  t.title   = "[Day 1: A-1] 安全かつ高速に進めるマイクロサービス化"
  t.description = <<~TEXT
    トレジャーデータ株式会社 国分 崇志 氏

    弊社には、多くの責任を担うモノリシックなRailsアプリケーションが存在しました。

    これを複数のチームで開発するために、単一のアプリケーションのまま複数のリポジトリに分割されていたのですが、切り出す単位があまり適切でないために、性能、安定性、保守性などの点で様々な問題を引き起こしていました。

    この問題を解決するために、我々がどのようにして素早く安全に適切なアーキテクチャへ修正していったかについて話します。
  TEXT
end

Topic.seed do |t|
  t.id      = 3
  t.user_id = 1
  t.title   = "[Day 1: B-1] Rails on Kubernetes on AWS"
  t.description = <<~TEXT
    freee株式会社 九岡 佑介 氏

    「スモールビジネスに携わるすべての人が創造的な活動にフォーカスできる」を目指しつづけていたところ、いつのまにか会計サービスだけではなくなってきた「これからのfreeeを支える技術」について話します。

    キーワード: Kubernetes, AWS, Rails, Docker, 分散トレーシング, 分散ロギング, Small teams, microservices, private PaaS
  TEXT
end

Topic.seed do |t|
  t.id      = 4
  t.user_id = 1
  t.title   = "[Day 1: A-2] Rails in Microservices"
  t.description = <<~TEXT
    Wantedly, Inc. 竹野 創平 氏

    マイクロサービスと一言で言っても、何をどこまでやるサービスを作り、それらのサービスをまとめてどのようなアーキテクチャにするのかというところにはかなりの自由度があり、技術的・事業的な変数に依存します。

    Wantedly でマイクロサービスを導入して3年が経ちましたが、Go, Python など複数の技術を導入する中で Rails の使い所にもパターンのようなものが現れてきました。またより大きなアーキテクチャとして、事業的な中核価値であるユーザープロフィールデータを既存の Rails アプリケーションから切り出し、より使いやすい形で各事業から活用できるようにした話をします。
  TEXT
end

Topic.seed do |t|
  t.id      = 5
  t.user_id = 1
  t.title   = "[Day 1: B-2] 学校をより良くするために、エンジニアができるたった一つのこと"
  t.description = <<~TEXT
    Classi株式会社 佐々木 達也 氏

    Classiは学校向けのサービスを提供しています。システム的にはRubyとPHPが両方使われていて、なんちゃってマイクロサービスで、、とたくさんの課題があります。そんな中で、安定してサービスを提供するためにやろうとしていることについて発表します。
  TEXT
end

Topic.seed do |t|
  t.id      = 6
  t.user_id = 1
  t.title   = "[Day 1: A-3] MySQL/InnoDB の裏側"
  t.description = <<~TEXT
    Repro株式会社 荒引 健 氏

    Rails では ActiveRecord 経由で簡単に扱えるデータベースですが、データベースについての理解はおろそかにされがちです。データベースを正しく理解することはパフォーマンスの向上に繋がったり、無駄なキャッシュをなくすことに繋がったりと大きなメリットがあります。

    本発表では MySQL/InnoDB に焦点を当て、これらがどのように動作しているか解説します。
  TEXT
end

Topic.seed do |t|
  t.id      = 7
  t.user_id = 1
  t.title   = "[Day 1: B-3] WebエンジニアのためのWebサービスデザイン実践講座 〜2018サヴァンナ編〜"
  t.description = <<~TEXT
    esa LLC 赤塚 妙子 氏

    Webエンジニアが1人で自分のWebサービスを開発する時に、どのように考えてデザインをしていけばいいのか？

    情報設計や機能の整理から、コンセプトやビジュアル作りにおける考え方、具体的な注意点やコツなどを、今回は某Railsエンジニアが作っている実際のサービスのデザイン改善を例に解説していければと思います。（あんまりRailsは直接は関係なさそうです）
  TEXT
end

Topic.seed do |t|
  t.id      = 8
  t.user_id = 1
  t.title   = "[Day 1: A-4] H2O/mruby でつくる L7 Gateway"
  t.description = <<~TEXT
    株式会社DMM.comラボ 佐藤 紘典 氏

    DMM.comラボでは認証・認可の基盤に H2O/mruby を利用しています。この基盤はもともと Nginx/Lua で実装されていました。それをなぜ書き直し、どのような効果があったか、その過程で得た知見を交えてH2O/mrubyの活用事例をご紹介します。
  TEXT
end

Topic.seed do |t|
  t.id      = 9
  t.user_id = 1
  t.title   = "[Day 1: B-4] それPostgreSQLでできるよ"
  t.description = <<~TEXT
    株式会社マチマチ 藤村 大介 氏

    PostgreSQLには便利な機能がたくさんあります。業務の中で「これできないかな?」と思って調べると拡張機能が用意されていた、ということも多々ありました。ActiveRecordおよび標準SQLを使って仕事をしていると見えてこない「レールの外」のPostgreSQLの世界をご紹介しようと思います。
  TEXT
end

Topic.seed do |t|
  t.id      = 10
  t.user_id = 1
  t.title   = "[Day 1: A-5] Quipperにおける「関心の分離」の歴史"
  t.description = <<~TEXT
    Quipper Ltd 長永 健介 氏

    Quipperにおける「関心の分離」の歴史についてお話しします。

    Quipperはこの数年間で事業を大きく成長させました。それに伴い、サービス展開地域と製品ラインナップも増加しました。

    終わりなき新機能開発に明け暮れながら、Quipperの開発者は、最短手で目前の問題を解決することと将来のメンテナンス性を維持することの間のバランスを保つことに腐心してきました。

    その努力の跡は、システム設計上の「関心の分離」に関する取り組みに見ることができます。

    このトークでは、「関心の分離」を実現するために試してきた手法の紹介を通じて、システム設計上の意思決定の根拠とその結果を考察します。
  TEXT
end

Topic.seed do |t|
  t.id      = 11
  t.user_id = 1
  t.title   = "[Day 1: B-5] Railsエンジニアのための技術ブログ TechRachoの舞台裏"
  t.description = <<~TEXT
    BPS株式会社 森 雅智 氏・八田 昌三 氏

    TechRacho（https://techracho.bpsinc.jp/）はWebエンジニアのための技術ブログとして毎日更新を行っている「開発会社の」技術ブログです。

    本講演では更新が滞りがちな会社の技術ブログをどのようにして事業化したのか、TechRachoに込められた思い、そして日々の更新の裏側をご紹介します。
  TEXT
end

Topic.seed do |t|
  t.id      = 12
  t.user_id = 1
  t.title   = "[Day 1: A-6] Rails コントリビューションから学んだ Git / GitHub 術"
  t.description = <<~TEXT
    株式会社永和システムマネジメント 伊藤 浩一 氏

    rails/rails という Rails プログラマーにとって源流となる GitHub のリポジトリがあります。

    そこでは開発のやりとりやソースコードと同様に、コミットメッセージ、コミットの積み方もオープンになっています。ふだん着目してそうで見落としがちなコミットメッセージの書き方のフローや周辺の Tips について、OSS リポジトリからの実例や Rails コミッター、Rails コントリビュータとの対話で得た見聞をベースにした実践の話が本トピックです。

    OSS の世界に限らず、明日からの現場のアプリケーション開発でも活用できる Git / GitHub でのちょっとしたテクニックを伝えられると良いなと思います。
  TEXT
end

Topic.seed do |t|
  t.id      = 13
  t.user_id = 1
  t.title   = "[Day 1: B-6] 365日24時間稼働必須サービスの完全無停止DB移行 〜MongoDB to Amazon Aurora〜"
  t.description = <<~TEXT
    Minimal Technologies, Inc 久田 真寛 氏

    高まるサービスの負荷、データ量の増大、そして次々と現れるボトルネック。サービスの成長に伴い、アーキテクチャの大規模な刷新が求められるケースは少なくないでしょう。

    昨年、wovn.io(ウォーブンアイオー)ではMongoDBからAmazon AuroraへのDB移行を不整合データや障害を起こさず、サービス無停止で行いました。

    このトークでは、Rubyを用いて38億レコード分のデータをどのようにDB移行したのかについて話します(最終的にはRailsアプリのルートディレクトリにRuby以外のプログラム言語ディレクトリが爆誕します)。
  TEXT
end

Topic.seed do |t|
  t.id      = 14
  t.user_id = 1
  t.title   = "[Day 1: A-7] TBD"
  t.description = <<~TEXT
    株式会社ビットジャーニー 藤 吾郎 氏

    TBD
  TEXT
end

Topic.seed do |t|
  t.id      = 15
  t.user_id = 1
  t.title   = "[Day 1: B-7] Railsアプリの育て方"
  t.description = <<~TEXT
    フリーランス 神速 氏

    Railsアプリを1人で練習のために触ることと、お仕事で使うことには大きな違いがあります。

    開発メンバーが増えたり、運用期間が長くなってから初めて分かる問題は数多く存在します。

    この発表では、中〜大規模の開発でツラくなるようなコード事例を紹介し、その上でどうやればメンテ性を維持したままRailsアプリを育てられるかについて話したいと思います。
  TEXT
end

Topic.seed do |t|
  t.id      = 16
  t.user_id = 1
  t.title   = "[Day 1: A-8] Realworld Domain Model on Rails"
  t.description = <<~TEXT
    Repro株式会社 橋立 友宏 氏

    ほとんどのRailsアプリにおいて、モデルの実装が本当の意味でファットになることは無い。では読みにくくなる原因は何なのか、モデルレイヤーを構築するにあたって意識しておくことを再度確認し、Railsにおいて現実的なモデル表現のテクニックや考え方を紹介する。
  TEXT
end

Topic.seed do |t|
  t.id      = 17
  t.user_id = 1
  t.title   = "[Day 1: B-8] Microservices Maturity Model on Rails"
  t.description = <<~TEXT
    株式会社FiNC 森 久太郎 氏

    マイクロサービスに関連する話題は技術論・組織論など多岐にわたるため、組織がその全ての能力を一朝一夕にして獲得することは不可能であり、段階的に習得していく必要があります。本セッションでは、FiNC社においてRuby on Railsを利用したマイクロサービスを構築してきた実践例(失敗も含む)に基づき、マイクロサービスの「成熟度モデル」を捉え、各ステージによってどのような能力を獲得していくべきか、をいろいろな側面から論じます。これからマイクロサービスの導入を検討している・導入し始めた、という方を主な想定リスナーとしています。
  TEXT
end

Topic.seed do |t|
  t.id      = 18
  t.user_id = 1
  t.title   = "[Day 2: A-1] Observability, Service Meshes and Microservices"
  t.description = <<~TEXT
    Cookpad Inc. 小野 大器 氏

    Microservices における次なる課題について、Cookpad における observability engineering や service mesh の構築の側面を中心にお話する予定です。前提となる、microsrvices を適用することで得られるプロダクト開発上のメリットや、解決すべき技術的課題についても触れる予定です。

    Observability engineerging とは、microservices において次の課題となるシステム全体としての振る舞いの把握に焦点を当てています。今までブラックボックスになりがちであったサービス間の通信周りで起こっていることを記録・分析・アラーティングできるようにすることで、production issue の解決やキャパシティプランニング等、複雑なシステムの運用を適切に行えるようにします。

    Service mesh を構築することで、ネットワーク層の関心事をアプリケーションから分離しながら、observability、fault isolation や production testing を実現します。Cookpad で構築している AWS ECS と Hako に特化した service mesh について、利用している Envoy proxy の詳細に触れながらお話します。

    その他、AWS X-Ray を使った distributed tracing の実現、gRPC を使った API 通信のためのインフラ構築といった内容になる予定です。

    keywords: observability, service mesh, distributed tracing, fault isolation, prodution testing, gRPC, Envoy proxy, AWS ECS
  TEXT
end

Topic.seed do |t|
  t.id      = 19
  t.user_id = 1
  t.title   = "[Day 2: B-1] ライブラリが生きているかどうかを監視したい"
  t.description = <<~TEXT
    株式会社SmartHR 藤井 哲平 氏

    弊社では自社開発の OSS を含む大量のライブラリに支えられてサービスを提供しています。

    多くのライブラリは毎日のように機能追加・バグ修正・パフォーマンス改善などが行われ、生きているように変化しています。一方で「眠っている」ともいえるライブラリもあります。サービスを提供し続けるため、生きたライブラリ・眠ったライブラリそれぞれとうまく付き合っていく手法や新しい仕組みづくりについてご紹介する予定です。
  TEXT
end

Topic.seed do |t|
  t.id      = 20
  t.user_id = 1
  t.title   = "[Day 2: A-2] minne での CM 対応でのハイブリッドクラウド運用"
  t.description = <<~TEXT
    GMOペパボ株式会社 後藤 利博 氏

    AWS + Nyah(OpenStack) で稼働中の minne のサービスの 2018年末の CM 対応時の構成変更やアプリケーションのパフォーマンスチューニングについてご紹介する予定です (Rails はあまり関係ないかもしれない)
  TEXT
end

Topic.seed do |t|
  t.id      = 21
  t.user_id = 1
  t.title   = "[Day 2: B-2] 冴えてるRailsエンジニアの育て方"
  t.description = <<~TEXT
    株式会社Aiming 黒木 慎介 氏

    エンジニア業務経験なし、Rails経験なしなどの人を採用してチームの戦力になってもらうまでにやっている事を色々とお話しできればと思います。
  TEXT
end

Topic.seed do |t|
  t.id      = 22
  t.user_id = 1
  t.title   = "[Day 2: A-3] コードレビュー自動化の最前線から"
  t.description = <<~TEXT
    SideCI, Inc. 松本 宗太郎 氏

    「コードレビュー自動化」というと、「RuboCopとESLintでインデントが崩れたコードがないか自動でチェックします」みたいな話を想像されるかもしれません。それはそれで悪いことではないのですが、2018年の人類としては、もっと上を目指していきたいものです。このトークでは、私たちがどのようにコードレビューを自動化しているかを紹介します。

    私たちは、特に「チーム内のローカルルール」に注目しています。チームローカルなルールは「どれだけ優れた開発者であっても、そのチームに長くいる人しか知らない」「一般のベストプラクティスとは一致しないことがある」という特徴から、RuboCopやESLintなどの一般的な検査ツールではカバーできない厄介者です。SideCIでは、QuerlyとGoodcheckというこの問題にフォーカスした検査ツールを開発しており、SideCIそのものの開発に活用しています。これらのツールを使うことでどのような体験が得られるのか、皆さんと共有したいと思います。
  TEXT
end

Topic.seed do |t|
  t.id      = 23
  t.user_id = 1
  t.title   = "[Day 2: B-3] Railsと非Railsの間"
  t.description = <<~TEXT
    株式会社みんなのウェディング 高橋 一生 氏

    当社ではPerl製フレームワークで作成したウェブサービスをRailsに置き換えるべく積極的に活動しています。Railsに置き換えるにあたって遭遇した不都合をいかにして乗り越えているかをご紹介したいと思います。
  TEXT
end

Topic.seed do |t|
  t.id      = 24
  t.user_id = 1
  t.title   = "[Day 2: A-4] 知性の習得 - 新人研修内容の一考察"
  t.description = <<~TEXT
    Railsの教科書 著者 五十嵐 邦明 氏

    新人研修で新人さんへ教えるべきことについて考察します。Railsエンジニアを育てる定番の研修内容と、より長いエンジニア人生で役立つであろう「知性」の習得方法について考察します。
  TEXT
end

Topic.seed do |t|
  t.id      = 25
  t.user_id = 1
  t.title   = "[Day 2: B-4] バス因子が自分でバス因子を脱するための方法"
  t.description = <<~TEXT
    株式会社Fablic 片山 潮美 氏

    あなたのプロジェクトには、バスに轢かれたらプロジェクトが破綻する人が何人いますか?

    自社サービスを運営している組織において、サービスのスケールのためには開発組織のスケールが必要不可欠です。

    急成長中である日本初の Ruby on Rails で作られているフリマアプリ フリルを開発するFablicのエンジニア組織において、バス因子である私が、組織のスケールのために脱バス因子するために同僚と行ってきたことを成功失敗両事例お話します。
  TEXT
end

Topic.seed do |t|
  t.id      = 26
  t.user_id = 1
  t.title   = "[Day 2: A-5] 正しく失敗しつつ進むプロダクト開発"
  t.description = <<~TEXT
    株式会社Kaizen Platform 関口 亮一 氏

    Kaizen Platform は創業から5年になるスタートアップですが、その成長の過程で様々な成功や失敗をしてきました。

    プロダクト開発に起きる諸問題には技術、人的リソース、事業構造など様々なものが存在しますが、Kaizen Platform ではこれらの問題に対してたくさんのチャレンジと失敗とその先の良い開発プロセスを模索し続けています。

    そのなかで培ってきて実践しているプラクティスを失敗したものも合わせて紹介しつつ、エンジニア, デザイナー, プロダクトマネージャー, セールスなどプロダクト開発に携わる全ての人達が、どのような取り組みをしていくことができるかについてお話しします。
  TEXT
end

Topic.seed do |t|
  t.id      = 27
  t.user_id = 1
  t.title   = "[Day 2: B-5] チーム開発積み重ね 〜Railsの上にも9年〜"
  t.description = <<~TEXT
    株式会社万葉 櫻井 達生 氏

    チームはどこかの誰かが作ってくれるものではありません。チームにいるメンバーが1人1人動くことによって作られていくものです。

    メンバーが動きやすいきっかけ作りが大切だと考えています。

    Railsを使って、チームで開発をするようになって9年。さまざまなチームで積み重ねた知見を共有します。

    開発をたのしくするきっかけになれたらうれしいです:)
  TEXT
end

Topic.seed do |t|
  t.id      = 28
  t.user_id = 1
  t.title   = "[Day 2: A-6] Qall - Docker で作る Quipper の開発環境"
  t.description = <<~TEXT
    Quipper Ltd 松島 史秋 氏

    Quipper では学習サービスを展開していますが、先生向け、生徒向け、保護者向け、管理者向けといったように多くのアプリケーションが存在しています。

    アプリケーションを跨いだ機能を開発するにあたって、これらを全てセットアップする必要があります。また、機能の追加により依存するパッケージやミドルウェアが追加される場合もあり、これらの管理は非常に煩雑です。

    この問題を解決するため、1 コマンドで全ての環境を Docker 上に構築できる Qall を作成しました。

    Qall 自体の構成や、Qall を作って日々の開発に利用している中で分かった、開発環境として Docker を利用するにあたってのハマりやすい点やその解決方法、現在抱えている問題について共有する予定です。
  TEXT
end

Topic.seed do |t|
  t.id      = 29
  t.user_id = 1
  t.title   = "[Day 2: B-6] FintechとRailsとgRPCと"
  t.description = <<~TEXT
    株式会社お金のデザイン 武田 慎之介 氏

    ここ数年盛り上がりをみせるFintech。その中でも私達は、第一種金融商品を扱い、投資一任を主軸としたロボアドバイザーTHEOを提供しており、まさにレガシーな金融とWebのようなTechとの中間に位置します。

    そんな私達が、どういうところでRailsを使い、またサービス全体をどのように構成しているかを全体的にご紹介します。

    また、最近私達はアプリとAPIサーバの通信を中心にgRPCを導入しはじめていますが、これをRailsでどのように扱うかついて、実験的ではありますが、現在の取り組みをご紹介します。
  TEXT
end

Topic.seed do |t|
  t.id      = 30
  t.user_id = 1
  t.title   = "[Day 2: A-7] RSpec 解体新書（仮）"
  t.description = <<~TEXT
    Increments Inc. 中山 裕司 氏

    Rails アプリケーションのテストフレームワークとして広く利用されている RSpec ですが、その長い歴史の中で、様々な工夫が内部実装としてコード化されてきました。Ruby という自由度が高い言語だからこそ実現できたフレームワークですが、自由度の高さ故の様々なエッジケースへの配慮などもコードベースに含まれています。それらの中から、以下のような点についていくつか紹介します。

    * 明日から RSpec を使うときに役立つかもしれない知識
    * 役に立たない Ruby トリビア
    * 各種機能がどの様に実装されているか
    * 奇妙な防衛的プログラミング
    * 開発体制
  TEXT
end

Topic.seed do |t|
  t.id      = 31
  t.user_id = 1
  t.title   = "[Day 2: B-7] リモートなチーム開発"
  t.description = <<~TEXT
    流しのルビースト 佐藤 竜之介 氏

    ここ数年でリモートワークを導入している会社はだんだんと増えてきましたし、その良さと難しさについては各所で語られるようになってきました。

    わたしはここ七年間、リモートワークという働き方で多くのチーム多くのプロダクト開発に関わってきました。

    その経験を通してわかったことは、リモートワークとは個人の働き方ではなくチームのあり方だということです。

    リモートワークをしたいモチベーションはひとによって様々でしょう。

    しかしチームが違えば価値観が違うように、チームに合うリモートワークのやり方も違ってきます。

    この発表では、わたしのいままでの経験から見えてきたリモートなチーム開発をよい感じにするための心がけをお話しいたします。

    これからリモートワークを始めようとしているチームにとってなにかのヒントになれば幸いです。
  TEXT
end

Topic.seed do |t|
  t.id      = 32
  t.user_id = 1
  t.title   = "[Day 2: A-8] esa を支える技術と気持ち"
  t.description = <<~TEXT
    esa LLC 深谷 篤生 氏

    esa.io が、とある趣味の開発合宿で初めてデプロイされてから、もうすぐ4年になろうとしています。

    この発表ではesa の開発や運用・ユーザーサポート等について、技術的/心理的な側面から、様々なリソースが制限されている中でどのように自分達なりに工夫してきたかを共有できれば幸いです。
  TEXT
end

Topic.seed do |t|
  t.id      = 33
  t.user_id = 1
  t.title   = "[Day 2: B-8] ActiveRecordデータ処理アンチパターン"
  t.description = <<~TEXT
    株式会社Gunosy 榎本 敏丸 氏

    ActiveRecordはWebエンジニア達が嫌う（？）SQLを書かずとも、Rubyオブジェクトで気軽にデータベースへアクセスできる魔法のようなツールです。しかし便利な反面、何も考えずにゴリゴリActiveRecordを使ってDBアクセスしていると、劇的に重たいクエリが発行されたり非効率的なクエリが量産されたりします。

    本発表ではそれらActiveRecordで陥りがちな罠をパターン化し、ActiveRecordデータ処理アンチパターンとして発表します。

    ※発表では実際のサンプルコードとともにパフォーマンスの計測結果も紹介します。
  TEXT
end

Topic.seed do |t|
  t.id      = 34
  t.user_id = 1
  t.title   = "[Day 2: A-9]「社内ツール作成サークル」活動記録"
  t.description = <<~TEXT
    株式会社ドリコム 大仲 能史 氏

    イベント管理ツール「DATND」
    ドキュメント共有ツール「Diita」
    スケジュール調整「調整ちゃん」
    ソーシャルブックマーク「だてブ」
    スライド共有ツール「sharedoc」
    の他、自動出退勤打刻や近所の飲食店のスクレイピング、slackbot、ChromeExtension、その他こもごもとした「隣の人を笑顔にする何か」を作るサークル活動をしています。

    社内用のライブラリ/サービスを作ったり、それをメンテしたり広めたりする際に考えたことを共有させていただきます。
  TEXT
end

Topic.seed do |t|
  t.id      = 35
  t.user_id = 1
  t.title   = "[Day 2: B-9] TBD"
  t.description = <<~TEXT
    MF KESSAI株式会社 篠原 祐貴 氏

    TBD
  TEXT
end
