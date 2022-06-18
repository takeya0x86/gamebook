;プロジェクトマネージャ編4A


*start

[cm]

[font color="0xffd700"]Ａ）部長が薦めてきたツール[resetfont][lr]
[r]
_　有償の割には安価で、という話で導入を検討したが、実際にトライアルをしてみると使い勝手も良かったそうだ。[lr]
_　今回は（気持ちの面はさておき）部長が薦めてきたツールを使うことにしよう。[lr]

[cm]
_　その後、順調にテスト自動化が進んでいるように見えたものの……。[lr]
[r]
@chara_show name="leader"
@playse storage="voice/scene_01_04_A/leader-01-04-A-01.ogg"
「PMさん、ちょっといいですか？　実は困ったことになってまして……」[lr]
[r]
_　テストリーダーが話しかけてきた。悪い予感がする。[lr]

*choice
[cm]
@restore

_　話を聞いてみると、テスト自動化が容易であるがゆえに、自動テストケースが増えすぎて困っているらしい。[lr]
_　特に、似たような手順でデータのパターンが異なる自動テストが大量にできてしまい、自動テストの管理や実行結果の確認の手間が増えているそうだ。[lr]
@chara_hide name="leader"
_　さて、どう対応しようか。[lr]
[r]
[nowait]
[font color=0xffd700][link target=*selectA]Ａ）きっとツールに問題があったんだ。テストリーダーが検討していたツールに乗り換えよう。[endlink][resetfont][r]
[font color=0xffd700][link target=*selectB]Ｂ）データ駆動など、自動テストの実装や保守の負担を軽減する可能性がある技法を取り入れてみよう。[endlink][resetfont][r]
[font color=0xffd700][link target=*selectC]Ｃ）テスターチームに要員を投入して、マンパワーで全て解決するぞ！[endlink][resetfont][r]
[endnowait]
[s]


*selectA
[cm]

[font color="0xffd700"]Ａ）きっとツールに問題があったんだ。テストリーダーが検討していたツールに乗り換えよう。[resetfont][lr]
[r]
_　やはりあの素人部長が薦めてきたツールが良くなかったんだ。そうに違いない。[lr]
_　せっかく経験のあるテストリーダーが意見を言ってくれたのに、部長の意見を取り入れたことを反省した。[lr]
_　ここは多少の手戻りを覚悟で、テストリーダーが検討していたツールに乗り換えよう。[lr]

[cm]

@fadeoutbgm
_　皆にツールの乗り換えを指示したが、作業は難航した。[lr]
_　それぞれに互換性はなく全くのゼロから作り直しになってしまったうえ、ツールの使い方が大きく異なるために習得に時間がかかった。[lr]
_　また、メーカーサポートもないために、メンバーからの質問は全てテストリーダーが対応することになった。[lr]
_　結果として、バージョンアップ版のテストまでに自動化は完了せず、テストチームが手動で対応せざるを得なくなった。[lr]
@chara_mod name="main" face="orz"
@playbgm storage="bad_end.ogg"
_　テストチームは連日の残業で疲弊し、多くの不具合を見逃したままバージョンアップ版がリリースされていくこととなった。[lr]

@badend storage="scene_01_04_A.ks"


*selectB
[cm]

[font color="0xffd700"]Ｂ）データ駆動など、自動テストの実装や保守の負担を軽減する可能性がある技法を取り入れてみよう。[resetfont][lr]
[r]
_　いくら容易であるといっても、未経験者が「テスト自動化ができる」ことと、「効果的な自動テストを実装・運用できる」とは別だということを学んだ。[lr]
_　テストリーダーが動いてくれて、自動テストを実装するメンバー皆にデータ駆動テストの考え方と作り方を説明してくれ、各々の自動化に取り入れることができたようだ。[lr]
_　結果として、自動テストの一部の共通化も進み、現実的な手間で運用ができるようになった。[lr]
_　メンバーにとっても良い経験になったのではないか。[lr]

@jump storage="scene_01_05.ks" target="*start"
[s]

*selectC
[cm]
@chara_hide name="leader"

[font color="0xffd700"]Ｃ）テスターチームに要員を投入して、マンパワーで全て解決するぞ！[resetfont][lr]
[r]
_　開発者として働いていたときに、こうした炎上は何度も乗り越えてきた。[lr]
_　対応方法はわかっている。[lr]
[r]
_　そう、テスターチームに人を増やして、マンパワーで解決だ。[lr]

[cm]

@fadeoutbgm
_　要員を増やしたが、担当するテスターが増えたことと、皆テスト自動化の知見がなかったこともあり、テストケースは更に肥大化。[lr]
_　必要なテストなのか不要なテストなのか、誰にも判断ができない状況になってしまった。[lr]
_　テスト対象の軽微な変更で影響を受ける自動テストも多くなり、結果として自動テストを諦めて全て手動での対応をすることになった。[lr]
[r]
@chara_mod name="main" face="orz"
@playbgm storage="bad_end.ogg"
_　テストチームは連日の残業で疲弊し、多くの不具合を見逃したままバージョンアップ版がリリースされていくこととなった。[lr]

@badend storage="scene_01_04_A.ks"
