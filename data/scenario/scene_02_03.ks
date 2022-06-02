;組込開発者編3


*goToTitle
@jump storage=title.ks


*start

[cm]

[font color="0xffd700"]Ａ）テスト資産はできる限り共通化したほうが良い。共通化できないところは分けるが、開発環境と評価環境で可能な限りテスト資産の共通化をすすめる。[resetfont][l][r]
[r]
_　開発環境と評価環境だけではない。[l][r]
_　PRJ後期に出てくる試作機や本番機も評価環境と同じという訳には行かないだろう。共通化を意識しておかないと管理しにくくなりそうだ。[l][r]
[r]
_　なかなか考えることが多くて大変だ。しかし、将来のことをしっかり考えて対応を用意しているからか、プロジェクトでいつも感じる漠然とした不安が今回はあまり無くなってきている気がする。[l][r]
_　これはもしかして、自動テストが初めてでもうまく行くんじゃないか？[l][r]

[cm]

_　少しやる気が出てきた。このまま他の開発者の参考になるように自動テストのサンプルコードでも書いてみようか。[l][r]
_　簡単なロジックでもいいけど、せっかくだし何かデバイスアクセスのテストでも……。[l][r]
[r]
_　デバイスのアクセスだと……！？
[r]
_　評価機にもいくつかのデバイスは搭載されているが、本番機と同等とは限らない。評価機には無くて、試作機や本番機にある機能もいくつもあると聞いている。[l][r]
_　それらのテストは、試作機や本番機が揃わないと実行できない。[l][r]

[cm]

_　ソフトウェア開発に必要なデバイスのインターフェース仕様はPRJ初期に決めるそうで、現時点でもいくつかのドキュメントは揃っている。[l][r]
_　しかし、デバイス内部の細かな仕様はPRJ中期までかかりそうだ。[l][r]
_　ハードウェア部門に訪ねれば現時点の仕様は聞けそうだが、確度は低そうだ。[l][r]

*choice
[cm]
@bg storage="bg_main.jpg" time=100
@chara_mod name="main" face="default"
@layopt layer="message0" visible=true
@playbgm storage="scene.ogg" cond="tf.fromEnd==true"
@eval exp="tf.fromEnd=false"

_　どうやってテストの自動化を進めようか。[l][r]
[r]
[nowait]
[font color="0xffd700"][link target="*selectA"]Ａ）機能がないものはテストできず、余計な開発工数は使えない。評価機で実行できない部分は試作機がきてから開発する。[endlink][resetfont][r]
[font color="0xffd700"][link target="*selectB"]Ｂ）インターフェースの仕様が分かれば開発できる。機能が無い部分は、インターフェース部で入力に対して決まった答えを返すダミー処理を作成して、それを使ってテストする。[endlink][resetfont][r]
[font color="0xffd700"][link target="*selectC"]Ｃ）機能が無いなら同等なものを用意すればいい。仕様を忠実に模したシミュレーターを作成して、それを使ってテストする。[endlink][resetfont][r]
[endnowait]
[s]


*selectA
[cm]

[font color="0xffd700"]Ａ）機能がないものはテストできず、余計な開発工数は使えない。評価機で実行できない部分は試作機がきてから開発する。[resetfont][l][r]
[r]
_　さすがに無いものはどうしようもない。実装はしたとしてテストできないから正しくできているか分からない状態が限界だろう。[l][r]
_　試作機が来てからやる作業をリストアップしておこう。[l][r]
_　試作機が来てから実装修正対応をしても……計画上はギリギリ収まりそうだ。何かトラブルがあったら大変な計画だけど他に取れる手段が無さそうだ。[l][r]
_　残業は覚悟しておかないといけないかもしれない。[l][r]
[r]
_　…………[l][r]


[cm]
@fadeoutbgm
「そういえば、さっきのミーティングで試作機についてトラブルが起きてるっぽくてな……」[l][r]
[r]
@chara_show name="manager"
_　PRJ後期に入ったある日に、部長に呼び止められた。評価機で実装できる部分は全部実装し終わり、今は試作機の到着待ちの状況である。[l][r]
_　あとは試作機が届けば進められるのだけど。嫌な予感がする。[l][r]
[r]
「まともに動いていないから、作り直すそうだ。きみらのところにくるのはもう少しかかるっぽいぞ」[l][r]
[r]
_　嫌な予感は的中するものだ。[l][r]

[cm]

_　「きみの計画は聞いてたから、間に合わなくなる対策で増員の希望は出してみたんだ。だけど、今回の試作機絡みでどこも人手が必要だから、増員の見込みは薄いかもな」[l][r]
[r]
_　それは困った。他の部門でも試作機遅れで大変なので、わたしたちのチームだけが問題なわけではないだろう。[l][r]
_　ただし、わたしたちが期日までに終わる条件は試作機のテストで不具合が０のときくらいだろう。[l][r]
_　それに期待するのはさすがに楽観視しすぎだろう。[l][r]
[r]
「今回は遅れても原因は明らかだから、こっちがどうこう言われることはないだろう。リリースを遅らせるよう話しておくよ」[l][r]
@chara_hide name="manager"

[cm]

_　今回みたいな問題はわたしの力では解決は難しいだろう。[l][r]
_　テスト自動化をいろいろ試すことはできたが、解決できるものとできないものがある。[l][r]
@chara_mod name="main" face="orz"
@playbgm storage="bad_end.ogg"
@eval exp="tf.fromEnd=true"

_　結局リリースは後ろ倒しになったが、わたしはよくやった方だと思う。[l][r]

[cm]

@layopt layer="message0" visible=false
@bg storage="bad_end.jpg" time=2000 method="fadeIn"
[l]
@button x=500 y=400 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice"
@button x=500 y=500 graphic="button/back_to_title_off.gif" enterimg="button/back_to_title_on.gif" target="goToTitle"
[s]


*selectB
@jump storage=scene_02_04.ks target=*start


*selectC
[cm]

[font color="0xffd700"]Ｃ）機能が無いなら同等なものを用意すればいい。仕様を忠実に模したシミュレーターを作成して、それを使ってテストする。[resetfont][l][r]
[r]
_　シミュレーターがあれば、試作機や本番機がなくてもテストができる。もちろん、シミュレーターとの差異はあるから試作機や本番機でのテストは必要だが、開発しやすくなることは間違いない。[l][r]
_　シミュレーターの開発には多くの工数が必要だが、あれば絶対に役に立つだろう。[l][r]

*choice2
[cm]
@chara_mod name="main" face="default"
@playbgm storage="scene.ogg" cond="tf.fromEnd==true"
@eval exp="tf.fromEnd=false"

_　シミュレーターを作るにはハードウェアの仕様を把握する必要があるが、PRJ初期の現時点ではハードウェアの使用は不明確だ。[l][r]
_　どうやってシミュレーターを作った方がいいだろうか。[l][r]
[r]
[nowait]
[font color="0xffd700"][link target="*selectA2"]Ａ）機能が同等のシミュレーターがあれば、試作機や本番機が1台しかない問題も解決する。仕様が確定したところから順次シミュレータープログラムを作成する。[endlink][resetfont][r]
[font color="0xffd700"][link target="*selectB2"]Ｂ）シミュレーターはできるだけ早く合った方が良い。仕様を類推してシミュレータープログラムを作成する。[endlink][resetfont][r]
[endnowait]
[s]

*selectA2
[cm]

[font color="0xffd700"]Ａ）機能が同等のシミュレーターがあれば、試作機や本番機が1台しかない問題も解決する。仕様が確定したところから順次シミュレータープログラムを作成する。[resetfont][l][r]
[r]
@fadeoutbgm
「で、シミュレータープログラムの作成に集中しすぎて、作るべき機能実装が遅れてしまった、と」[l][r]
[r]
@chara_mod name="main" face="orz"
@playbgm storage="bad_end.ogg"
@eval exp="tf.fromEnd=true"
_　思ったよりハードウェアの仕様が複雑で、シミュレータープログラムの作成工数が膨らんでしまった。仕様確定も遅れていたが、シミュレーターに工数を取られて機能実装もできなかった。[l][r]

[cm]

@layopt layer="message0" visible=false
@bg storage="bad_end.jpg" time=2000 method="fadeIn"
[l]
@button x=500 y=400 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice2"
@button x=500 y=500 graphic="button/back_to_title_off.gif" enterimg="button/back_to_title_on.gif" target="goToTitle"
[s]


*selectB2
[cm]

[font color="0xffd700"]Ｂ）シミュレーターはできるだけ早く合った方が良い。仕様を類推してシミュレータープログラムを作成する。[resetfont][l][r]
[r]
@fadeoutbgm
「で、シミュレーターはあまり使い物にならなかった、と」[l][r]
[r]
@chara_mod name="main" face="orz"
@playbgm storage="bad_end.ogg"
@eval exp="tf.fromEnd=true"
_　ハードウェアで確定していない仕様は類推して、シミュレータープログラムを作成してテストに利用していたが、試作機を使ってのテストで動作の乖離が多く見つかった。[l][r]
_　結局シミュレーターで問題ない、としていた機能もほとんど見直すことになった。作ったシミュレーターは今はお払い箱になってしまった。[l][r]

[cm]

@layopt layer="message0" visible=false
@bg storage="bad_end.jpg" time=2000 method="fadeIn"
[l]
@button x=500 y=400 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice2"
@button x=500 y=500 graphic="button/back_to_title_off.gif" enterimg="button/back_to_title_on.gif" target="goToTitle"
[s]
