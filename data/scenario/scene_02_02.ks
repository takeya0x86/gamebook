;組込開発者編2


*goToTitle
@jump storage=title.ks


*start

[cm]

[font color="0xffd700"]Ｃ）使えるものは何でも使う。開発環境でも評価環境でもテストを行う。[resetfont][l][r]
[r]
_　本番環境とはアーキテクチャが異なる開発環境でも、基本的なロジックのテストはできるはずだ。[l][r]
_　何より開発者が開発している環境でテストができる。[l][r]
_　テストを自動化できれば、開発中に素早くフィードバックが得られるので開発効率化が期待できる。[l][r]
_　本番環境と同じアーキテクチャである評価環境のテストを実行すれば、開発環境との挙動の違いに早く気付けるはずだ。[l][r]
_　評価機は１台しかないし、評価機でバイナリを動かすようにする手間はあるが、定期的にテストすることで、開発の抜けに素早く気付くことができそうだ。[l][r]
_　うん、計画初期のテスト方針は良さそうだ。[l][r]

*choice
[cm]
@bg storage="bg_main.jpg" time=100
@chara_mod name="main" face="default"
@layopt layer="message0" visible=true
@playbgm storage="scene.ogg" cond="tf.fromEnd==true"
@eval exp="tf.fromEnd=false"

_　テストを自動化するにあたって、テストケースを設計し、テスト実行環境を用意し、テストコードを書いていく。[l][r]
_　しかし、開発環境と評価環境が違うんだ。テストケースやテスト実行環境、テストコードにも環境の違いが出てくるはずだ。最初は共通のものでいいと思っていたけど、環境ごとに分けなければいけないところもあるはずだ。[l][r]
_　テスト資産はどうやって扱おうか。[l][r]
[r]
[nowait]
[font color="0xffd700"][link target="*selectA"]Ａ）テスト資産はできる限り共通化したほうが良い。共通化できないところは分けるが、開発環境と評価環境で可能な限りテスト資産の共通化をすすめる。[endlink][resetfont][r]
[font color="0xffd700"][link target="*selectB"]Ｂ）テスト資産を分けて管理したほうが良い。実行するときは別々に実行するので、テスト資産の共通化は行わずに開発環境と評価環境で別々にテスト資産を用意する。[endlink][resetfont][r]
[endnowait]
[s]

*selectA
@jump storage=scene_02_03.ks target=*start
[s]


*selectB
[cm]

[font color="0xffd700"]Ｂ）テスト資産を分けて管理したほうが良い。実行するときは別々に実行するので、テスト資産の共通化は行わずに開発環境と評価環境で別々にテスト資産を用意する。[resetfont][l][r]
[r]
_　環境が違うんだ。テスト資産も別々に用意するのがいいだろう。何より共通化は考えることが多くて難しそうだ。[l][r]
_　別々に用意するといっても、片方を先に作ってからコピーして違う部分だけ修正すれば工数もそこまで多くならないだろう。[l][r]
_　テストの自動化は初めてなのだから、あまり難しいことをするよりもやりやすい方法で進めてみた方がうまく行くはずだ。[l][r]
[r]
_　…………[l][r]

[cm]
@fadeoutbgm
@chara_show name="qa"
「じゃあ、ミーティングの参加お願いね」[l][r]
[r]
@chara_hide name="qa"
_　同期の彼女はそう言って去っていった。わたしは変な顔はしていなかっただろうか。[l][r]
_　仕様変更の説明ミーティングをさせてほしい、と言われたときに、わたしの気分は一気に憂鬱になった。自動テストの修正作業をまたやらなければならないことが原因だ。[l][r]
_　この前、自動テストで評価環境の結果がおかしい、とチームで話題に挙がったが、テストスクリプトの修正ミスが原因だった。[l][r]
_　開発環境のテストスクリプトを修正してから、コピーで評価環境のテストスクリプトを修正したが、その時に開発環境固有のコードが混ざってしまっていたのだ。[l][r]

[cm]

_　仕様変更が入ると開発環境と評価環境それぞれのテスト資産を修正しなければならない。修正場所をコピーすればいいと思っていたが、微妙な差異があってコピーミスすることが珍しくない。想定以上に修正コストが多くかかっている。[l][r]
[r]
@chara_mod name="main" face="orz"
@playbgm storage="bad_end.ogg"
@eval exp="tf.fromEnd=true"

_　この先、試作機や本番機がくるのであれば、テスト資産が更に増えることになる。ますます管理が難しくなることを思えば、どれかのテスト資産の更新を止める必要があるかもしれない。なかなかうまく行かないなぁ……。[l][r]

[cm]

@layopt layer="message0" visible=false
@bg storage="bad_end.jpg" time=2000 method="fadeIn"
[l]
@button x=500 y=400 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice"
@button x=500 y=500 graphic="button/back_to_title_off.gif" enterimg="button/back_to_title_on.gif" target="goToTitle"
[s]
