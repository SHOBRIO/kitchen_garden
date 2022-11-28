# kitchen_garden

アレルギーや体調の崩しやすさが気になる人へ
1つの鉢植えからシェアワークまで、健康とおいしい体験を生み出す
”家庭菜園”と”あなた”をつなぐサービスです

■メインのターゲットユーザー
20~４０代
家庭菜園が身近でない現役世代。小さな子どもを持つ夫婦。

■ユーザーが抱える課題
１.体の調子を整えるビタミンなどの栄養素が不足しがち
2.子どもにどんな食べ物を与えるべきか悩んでしまう（アレルギー等）
3.家庭菜園 = 畑という概念が強く、身近に感じられない。はじめかたがわからない。
4.種類ごとに育て方を検索するのが大変。

■解決方法
1.家庭菜園の情報に触れたり、実際に生活に取り入れることで、健康的な食事の割合を増やす
2.無農薬の野菜から起こるアレルギー症状はほとんどない為、離乳食にも安心して使える
4.小さい鉢植えや庭のプランターで育てられる野菜を紹介する（道具含め）
5.検索する手間を少なくするためにガイドを表示する


　■実装予定の機能（以下の例は実際のアプリの機能から一部省略しています）
　・利用検討ユーザー
　　　　　・野菜の育成スケジュールを確認できる
　　　　　・おすすめのタイムラインを閲覧できる
　　　　　・タイムラインをタグの関連で絞ることができる
　　　　　・タイムラインのダグからも育成スケジュールを確認できる
　　　 ・ユーザー登録ができる
　　　　
　・登録ユーザー
　　　・投稿機能が利用できる
　　　・育成を管理する画面が利用できる
　　　・育成状況を種類ごとに公開するかしないか選択できる
　　　・お気に入りのユーザーをフォローできる
　　　・フォローしたユーザーの公開されている育成を閲覧できる
　　　・いいねできる
　　　・タイムラインの投稿にコメントできる
	・グループ機能
		・野菜管理機能のステータスをグループ内で変更可能にして日誌を同期する。
	・野菜管理機能（詳細）
	　　・ガイド機能（ガンチャートまたはカレンダー）
		土づくり〜収穫予定まで、テンプレートを用意してタスクを表示する
		タスクによってステータス機能を利用できる
	　　・日誌機能
		作業内容、成長記録、画像添付可で、そのままタイムライン投稿もできる
	　　・水やり通知（メールまたはライン）
		on offは選択できるようにする

・育てる野菜に迷っているユーザー向け（利用検討ユーザー含む）
　　・よく食べるものを選んでもらい、関連する野菜を提案　
　　・気になるリラクゼーションから野菜の提案
　　・その時で育成がおすすめな野菜を提案
　　・ランキング機能から提案

　・管理ユーザー
　　　・登録中ユーザーの検索、一覧、詳細、編集
　　　・野菜一覧、詳細、作成、編集、削除
　　　・タグ一覧、詳細、作成、編集、削除
　　　・日誌一覧、詳細、作成、編集、削除
　　　・投稿一覧、詳細、作成、編集、削除
　　　・コメント一覧、編集、削除
　　　・管理ユーザーの一覧、詳細、作成、編集、削除


　■なぜこのサービスを作りたいのか？
    自分の経験から、アレルギーや風邪など、その多くが食べ物を見直す事で改善された。普段気にせず食べている”食べ物”の”安全”や”興味関心を高める”きっかけとして、家庭菜園はとても良い効果をもたらします。
	私は妻と子どもと３人ぐらしで、家庭菜園をはじめたきっかけは、家族との有意義な時間を作りたかったからです。当時はコロナ前でしたが、毎回休みを旅行や遠出をするわけにもいかないので、ショッピングモールや公園が定番になります。マンネリが解消され、無農薬でおいしい野菜を作りつつ、食費も浮くし、息子にもよい経験になれば１石3丁くらいに思っていました。

	実際に家庭菜園を行うなかで、畑を借りなくても玄関先のプランターで育てたり、家の中で育成できる野菜も知りました。定期的に土に触れたり、採れたて野菜の味や香りに浸っていると、だんだんと体に悪そうなものを自分から遠ざけるようになっていきます。（予言）
    誤解しないで欲しいのは、私はビーガンでもなければ家族でマックも行きますし、お菓子も食べます。笑

	野菜を使った食事が増えていけば、今より健康でハッピーな社会、アレルギーに悩む人が減っていくと信じています。そして、このアプリは利用者がさまざまな野菜を育てやすいようにガイドし、その野菜で作った料理などを写真でシェアして、継続して健康を楽しめるようなサービスを目指し開発します。


P.S.共同畑では水やりや追肥などの助け合いがありますが、見た目でわかりにくいので、グループ機能により別ユーザーでもタスクのステータス更新ができるようにする。
グループ機能は後から追加予定。。
