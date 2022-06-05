;タイトル画面

[cm]

@start_keyconfig
@chara_hide_all
@hidemenubutton
@layopt layer="message0" visible=false
@clearstack
@stopbgm

[if exp="sf.end01==true && sf.end02==true && sf.end03==true && sf.end04==true"]
  @bg storage="white.jpg" time=500
  @bg storage="title_white.jpg" time=100
[else]
  @bg storage="black.jpg" time=500
  @bg storage="title_black.jpg" time=100
[endif]
@wait time=700

*start
;「まえがき」ボタン
@button x=850 y=400 graphic="button/go_to_foreword_off.gif" enterimg="button/go_to_foreword_on.gif" target="foreword"

;「はじめから」ボタン
@button x=850 y=500 graphic="button/go_to_start_off.gif" enterimg="button/go_to_start_on.gif" target="gamestart"

;「解説」ボタン
@button x=850 y=600 graphic="button/go_to_commentary_off.gif" enterimg="button/go_to_commentary_on.gif" target="commentary"

[s]

*foreword
@jump storage="foreword.ks"
[s]

*gamestart
;一番最初のシナリオファイルへジャンプする
@jump storage="scene_00.ks"
[s]

*commentary
@jump storage="commentary.ks"
[s]
