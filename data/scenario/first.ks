;一番最初に呼び出されるファイル

@title name="テスト自動化そのまえに-JaSST'22TohokuNovel"

@stop_keyconfig


;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"

;ゲームで必ず必要な初期化処理はこのファイルに記述するのがオススメ

;キャラクター定義
;主人公
@chara_new name="main" storage="chara/main/main_stand.png"
@chara_face name="main" face="orz" storage="chara/main/main_orz.png"
@chara_face name="main" face="down" storage="chara/main/main_down.png"

;部長
@chara_new name="manager" storage="chara/manager/manager_stand.png"

;リーダー
@chara_new name="leader" storage="chara/leader/leader_stand.png"

;QA
@chara_new name="qa" storage="chara/qa/qa_stand.png"

;ゴッドハンド
@chara_new name="godhand" storage="chara/godhand/godhand_stand.png"

;インフラ
@chara_new name="infra" storage="chara/infra/infra_stand.png"

;BGM設定
@bgmopt volume=10

;メッセージボックスは非表示
@layopt layer="message0" visible=false

;最初は右下のメニューボタンを非表示にする
@hidemenubutton

;タイトル画面へ移動
@jump storage="title.ks"

[s]
