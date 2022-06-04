;プロジェクトマネージャ編4B

*goToTitle
@jump storage="title.ks"


*start

[cm]

[font color="0xffd700"]Ｂ）テストリーダーが検討していたツール[resetfont][l][r]
[r]
_　やはり多少学習コストがかかったとしても、やりたいテストが自動化できるほうを選ぶべきだろう。[l][r]
_　今回はテストリーダーが検討していたツールを使うことにしよう。[l][r]

*choice
[cm]
@bg storage="bg_main.jpg" time=100
@chara_mod name="main" face="default"
@layopt layer="message0" visible=true
@playbgm storage="scene.ogg" cond="tf.fromEnd==true"
@eval exp="tf.fromEnd=false"

_　その後、順調にテスト自動化が進んでいるように見えたものの……。[l][r]
[r]
@chara_show name="leader"
@playse storage="voice/scene_01_04_B/leader-01-04-B-01.ogg"
「PMさん、ちょっといいですか？　実は困ったことになってまして……」[l][r]
[r]
_　テストリーダーが話しかけてきた。悪い予感がする。[l][r]
_　話を聞いてみると、テスターチームが自動化に不慣れで、実装が思うように進んでいないらしい。[l][r]
_　このままではプロジェクトの進行にも影響が出てしまう。[l][r]
@chara_hide name="leader"
_　どう対応しようか。[l][r]
[r]
[nowait]
[font color=0xffd700][link target=*selectA]Ａ）諦めて全て手動で実行する。[endlink][resetfont][r]
[font color=0xffd700][link target=*selectB]Ｂ）開発者に、代わりに自動テストを書いてもらう。[endlink][resetfont][r]
[font color=0xffd700][link target=*selectC]Ｃ）メンバー同士相互のコードレビューや、開発者によるコードレビュー、ペアプログラミングを行う。[endlink][resetfont][r]
[endnowait]
[s]


*selectA
[cm]

[font color="0xffd700"]Ａ）諦めて全て手動で実行する。[resetfont][l][r]
[r]
@fadeoutbgm
_　こうなっては仕方がない。[l][r]
_　テストケースを全て手動で実行することにした。[l][r]
@chara_mod name="main" face="down"
@playbgm storage="bad_end.ogg"
@eval exp="tf.fromEnd=true"
_　リグレッションテストの実行に膨大な工数がかかるようになり、充分なテストが行われず、バージョンアップを行うたびにデグレードが発生する状態になってしまった。[l][r]

[cm]

@layopt layer="message0" visible=false
@bg storage="bad_end.jpg" time=2000 method="fadeIn"
[l]
@button x=500 y=400 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice"
@button x=500 y=500 graphic="button/back_to_title_off.gif" enterimg="button/back_to_title_on.gif" target="goToTitle"
[s]


*selectB
[cm]

[font color="0xffd700"]Ｂ）開発者に、代わりに自動テストを書いてもらう。[resetfont][l][r]
[r]
@fadeoutbgm
_　こうなっては仕方がない。プログラムを書くなら、開発者のほうが適任だろう。彼らの力を借りよう。[l][r]
[r]
_　開発者に自動テストを書き始めてもらったが、環境が変わるとうまく動作しない問題は解決できず。[l][r]
_　開発者からも、[l][r]
[r]
@playse storage="voice/scene_01_04_B/mob-01-04-B-01.ogg"
「自分の書いたコードには問題がない。環境のせいだ」[l][r]
[r]
_　と言われてしまった。[l][r]
@chara_mod name="main" face="down"
@playbgm storage="bad_end.ogg"
@eval exp="tf.fromEnd=true"
_　信頼できる自動テストは、ついに実現できなかった。[l][r]

[cm]

@layopt layer="message0" visible=false
@bg storage="bad_end.jpg" time=2000 method="fadeIn"
[l]
@button x=500 y=400 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice"
@button x=500 y=500 graphic="button/back_to_title_off.gif" enterimg="button/back_to_title_on.gif" target="goToTitle"
[s]


*selectC
[cm]

[font color="0xffd700"]Ｃ）メンバー同士相互のコードレビューや、開発者によるコードレビュー、ペアプログラミングを行う。[resetfont][l][r]
[r]
_　ここは冷静に対策を練ろう。[l][r]
_　テストチームに今後も自動テストをメンテナンスしてもらうのだから、この機会にスキルアップを図る必要もある。[l][r]
_　どうも個別にコードを書いているようだから、相互のレビューやペアプロを薦めてみよう。[l][r]
_　そうだ、どうせなら開発者にもコードレビューをしてもらうと、それぞれに学びがあるかもしれない。[l][r]

[cm]

_　このやり方は効果があった。[l][r]
[r]
_　開発者にとってもシステムテストで何が行われているのかを知る良い機会になったし、テストチームにとっても自動テストの実装スキルの向上に役立った。[l][r]
[r]
_　結果、当初問題になっていた自動テストの不安定さについても、適切な待機の挿入や、コードそのものの質の底上げによって解消されてきたようだ。[l][r]
[r]
_　これで、今後のバージョンアップのたびにリグレッションテストが自動で行える。部長にも胸を張って報告できそうだ。[l][r]

@jump storage="scene_01_05.ks" target="*start"
[s]
