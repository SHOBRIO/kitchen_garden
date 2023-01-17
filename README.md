# kitchen_garden

画面遷移図
Figma URL: https://www.figma.com/file/iBoaT72sjtjTX0SSnTpUxZ/%E7%94%BB%E9%9D%A2%E9%81%B7%E7%A7%BB%E5%9B%B3?node-id=0%3A1&t=MZPEdEQ8v5MqMEAd-1

子どもが小さいときのお出かけ先に困っている家族へ
1つの鉢植えからシェアワークまで、健康とおいしい体験を生み出す
”家庭菜園”と”あなた”をつなぐサービスです。

■メインのターゲットユーザー
    20~40代
    家庭菜園が身近でない子育て世代。

■ユーザーが抱える課題
    1.子どもが小さいと、お出かけ先として公園以外の候補がほとんどない
    2.週末にお出かけを予定する際に変化を加えるのが大変
    3.同じ場所に外出が多いと、夫婦のコミュニケーションがマンネリする
    4.家庭菜園 = 畑という概念が強く、身近に感じられない。はじめかたがわからない。
    5.種類ごとに育て方を検索するのが大変。

■解決方法
    1~2.1つの提案として、施設への外出ではなく、家や共同畑を利用した家庭菜園を知ってもらう
    2.  自然と生まれる共同作業によって、コミュニケーションのマンネリを解消できる
    4.  小さい鉢植えや庭のプランターで育てられる野菜を紹介する
    5.  ガイドを表示して育て方を検索する手間を少なくする


●実装予定の機能（リリース時点）

　未登録ユーザー
　・野菜の育成スケジュールを確認できる
　・投稿を閲覧できる
　・投稿をキーワード検索できる
　・投稿をタグで絞ることができる
　・気になる投稿に関連する野菜の育成スケジュールを確認できる
　・気になるユーザーのプロフィールを確認できる
　・ユーザーの新規登録ができる

　登録ユーザー
　・プロフィール機能が利用できる
　　ニックネーム、世帯人数、理想のスケール、好きな野菜
　　理想規模 = 部屋の中でさりげなく or　　玄関外（ベランダ）の小スペースで　or お庭のスペースで or 共同畑で本格的に
　・投稿のCRUD機能が利用できる
　　本文（100字程度）、画像、タグ　（ツイッターのイメージ）
　・野菜の管理画面"が利用できる
　・お気に入りのユーザーをフォローできる
　・投稿に"いいね"できる
　・投稿に"コメント"できる


●家庭菜園を手助けするための機能

（以下は登録ユーザーが利用できるサービスとして考えています）
・育てる野菜のCRUD機能
・ガイド機能
　ガイドとは土づくりから収穫予定までのタスクをカレンダーに表示して手助けを行うこと
　タスクの種類によってはステータス機能を利用できる
・日誌機能
    タイトル、本文、画像、タグ
　日誌は任意で投稿できるようにする。
・水やり通知機能"（メール, LINEなど）on offは選択できるようにする



○管理ユーザーの機能

　・登録ユーザー　一覧、詳細、　　　　　　削除
　・管理ユーザー　一覧、詳細、作成、編集、削除
　・野菜データ　　一覧、詳細、作成、編集、削除
　・タグ　　　　　一覧、　　　作成、編集、削除
　・日誌　　　　　一覧、詳細、　　　編集、削除
　・ステータス　　一覧、　　　作成、編集、削除
　・投稿　　　　　一覧　詳細、　　　削除
　・コメント　　　一覧　　　　　　　削除

○リリース後、ユーザーの声からリリースを考えている機能

　・グループ機能
　　育成野菜を管理する画面"を共有できる
　　グループ間でタスクのステータス、日誌が同期される。

■なぜこのサービスを作りたいのか？
　私は妻と子どもと３人ぐらしで、家庭菜園をはじめたきっかけは、家族との有意義な時間を作りたかったからです。当時はコロナ前でしたが、毎回休みを旅行や遠出をするわけにもいかないので、ショッピングモールや公園が定番になります。マンネリが解消され、無農薬でおいしい野菜を作りつつ、食費も浮くし、息子にもよい経験になれば１石3丁くらいに思っていました。
    実際に家庭菜園を行うなかで家族との絆が深まるのはもちろん、普段気にせず食べている食べ物の安全や”興味関心を高める”きっかけとして、家庭菜園はとても良い効果をもたらしてくれました。（誤解しないで欲しいのは、私は健康ヲタクではありません。家族でファストフード店も行くしお菓子も大好きです。）
また、畑を借りなくても玄関先のプランターや家中で育てられる野菜を知り、誰もがスペースをそこまで気にすることなく始められることも家庭菜園を広めたいと思うきっかけになっています。
　
P.S.共同畑では水やりや追肥などの助け合いがありますが、畑は作業した跡がわかりにくいのでグループ機能により別ユーザーともタスクのステータスや日誌の共有をできるようにしたいと考えています。この機能は家族をはじめ、家庭菜園をする仲間たちとのやり取りに役立ちます。

※学習の遅れにより大幅変更となりました
■スケジュール
　企画〜技術調査：12/1〆切
　README〜ER図作成：1/19 〆切
　メイン機能実装：1/24 - 2/28
　β版をRUNTEQ内リリース（MVP）3/1〆切
　本番リリース：3月中旬
