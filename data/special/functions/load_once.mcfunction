##############################
### 初回ロード処理
##############################

#################### UUIDエンティティ初期化 ####################
function uuid_entity_manager:initializer/initialize

#################### チーム作成 ####################
team add Ally {"text":"プレイヤー・ペット・アライアンス連合チーム"}
team add Enemy {"text":"モンスター連合チーム"}
team modify Ally collisionRule never
team modify Enemy collisionRule never
team modify Ally friendlyFire false
team modify Enemy friendlyFire false
team modify Ally prefix {"text":"[Ally] ","color":"aqua","bold":true}
team modify Enemy prefix {"text":"[Enemy] ","color":"light_purple","bold":true}
team modify Ally suffix {"text":" [L]","color":"red","bold":true}
team modify Ally suffix {"text":" [E]","color":"red","bold":true}
team modify Ally suffix {"text":" [C]","color":"gold","bold":true}
team modify Ally suffix {"text":" [P]","color":"green","bold":true}
#################### チーム作成 ####################



#################### 全体向けスコアボード ####################
### ワールド管理スコアボード
scoreboard objectives add Settings dummy {"text":"設定"}
### タイマースコアボード
scoreboard objectives add GlobalTickTimer dummy {"text":"共通Tickタイマー"}
scoreboard objectives add GlobalCSTimer dummy {"text":"共通CentiSecタイマー"}
### グローバル変数(要らないデータしか入れてはいけない!!!!!!!!!!!!!)
scoreboard objectives add Global dummy {"text":"グローバル変数"}
### ローカル変数(要らないデータしか入れてはいけない!!!!!!!!!!!!!)
scoreboard objectives add Local dummy {"text":"ローカル変数"}
### 成功カウント
scoreboard objectives add SuccessCount dummy {"text":"コマンド成功カウント"}
### 乱数
scoreboard objectives add Random dummy {"text":"乱数"}



#################### 管理エンティティ共通スコアボード ####################
scoreboard objectives add ManagedDataID dummy {"text":"データ管理ID"}
scoreboard objectives add TargetID dummy {"text":"ターゲットID"}
scoreboard objectives add TargetLinkID dummy {"text":"ターゲット紐付けID"}
scoreboard objectives add PlayerID dummy {"text":"プレイヤー管理ID"}
scoreboard objectives add QueueID dummy {"text":"順番管理ID"}

#################### プレイヤー共通スコアボード ####################
scoreboard objectives add SuppressParticle dummy {"text":"パーティクル抑制レベル"}
scoreboard objectives add Health health {"text":"プレイヤー現在HP"}

#################### 計算関連共通スコアボード ####################
scoreboard objectives add Distance dummy {"text":"ターゲットとの距離(cm)"}
scoreboard objectives add BlockThickness dummy {"text":"ブロックの厚み(cm)"}
scoreboard objectives add Dimension dummy {"text":"ディメンション"}
scoreboard objectives add X dummy {"text":"X座標(cm)"}
scoreboard objectives add Y dummy {"text":"Y座標(cm)"}
scoreboard objectives add Z dummy {"text":"Z座標(cm)"}
scoreboard objectives add MotionX dummy {"text":"X速度(cm/t)"}
scoreboard objectives add MotionY dummy {"text":"Y速度(cm/t)"}
scoreboard objectives add MotionZ dummy {"text":"Z速度(cm/t)"}
scoreboard objectives add RotateAngle dummy {"text":"水平角度(cdeg)"}
scoreboard objectives add TiltAngle dummy {"text":"鉛直角度(cdeg)"}

#################### 敵ステータス関連スコアボード ####################
### 敵HP関連
scoreboard objectives add MaxHP dummy {"text":"最大HP(hp)"}
scoreboard objectives add HP dummy {"text":"現在HP(hp)"}
scoreboard objectives add MaxMP dummy {"text":"現在MP(mp)"}
scoreboard objectives add MP dummy {"text":"現在MP(mp)"}
scoreboard objectives add Damage dummy {"text":"ダメージ(hp)"}
scoreboard objectives add NaturalDamage dummy {"text":"自然ダメージ(hp)"}
### 敵スキル
scoreboard objectives add SkillTimer dummy {"text":"スキルタイマー"}

#################### 振舞い定義用スコアボード ####################
### TargetSettings
scoreboard objectives add DesiredDistance dummy {"text":"ターゲット希望距離(cm)"}
scoreboard objectives add DesiredHeight dummy {"text":"ターゲット希望高度差(cm)"}
scoreboard objectives add FollowRange dummy {"text":"ターゲット補足距離(cm)"}
scoreboard objectives add LostRange dummy {"text":"ターゲット諦め距離(cm)"}
scoreboard objectives add MovementSpeed dummy {"text":"通常時移動速度(ccm/t)"}
scoreboard objectives add SearcherToStart dummy {"text":"ターゲット探索開始時間(cs)"}
scoreboard objectives add TargetDistance dummy {"text":"ターゲットとの距離(cm)"}
### MoveSettingsList
scoreboard objectives add RotateOffset dummy {"text":"ターゲット初期相対水平角度(cdeg)"}
scoreboard objectives add TiltOffset dummy {"text":"ターゲット初期相対垂直角度(cdeg)"}
#
scoreboard objectives add SpinSpeed dummy {"text":"ターゲットへの回転可能速度(cdeg/t)"}
scoreboard objectives add SpinAmount dummy {"text":"ターゲットへの回転量(cdeg)"}
#
scoreboard objectives add RepeaterStart dummy {"text":"動き開始時間(cs)"}
scoreboard objectives add RepeaterToStart dummy {"text":"動き開始実時間(cs)"}
scoreboard objectives add RepeaterEnd dummy {"text":"動き終了時間(cs)"}
scoreboard objectives add RepeaterToNext dummy {"text":"動き終了実時間(cs)"}
scoreboard objectives add RepeaterCount dummy {"text":"動き変化繰り返し回数"}
scoreboard objectives add RepeatedCount dummy {"text":"動き変化繰り返し済み回数"}
#
scoreboard objectives add ForwardAmount dummy {"text":"前への移動量(ccm)"}
scoreboard objectives add ForwardSpeed dummy {"text":"前への速さ(ccm/t)"}
scoreboard objectives add ForwardGravity dummy {"text":"前への加速度(ccm/t/t)"}
scoreboard objectives add LeftwardAmount dummy {"text":"左への移動量(ccm)"}
scoreboard objectives add LeftwardSpeed dummy {"text":"左への速さ(ccm/t)"}
scoreboard objectives add LeftwardGravity dummy {"text":"左への加速度(ccm/t/t)"}
scoreboard objectives add UpwardAmount dummy {"text":"上への移動量(ccm)"}
scoreboard objectives add UpwardSpeed dummy {"text":"上への速さ(ccm/t)"}
scoreboard objectives add UpwardGravity dummy {"text":"上への加速度(ccm/t/t)"}
#
scoreboard objectives add OnCloseForwardBy dummy {"text":"近い時乗数"}
scoreboard objectives add OnCloseUpwardBy dummy {"text":"低い時乗数"}
# 
scoreboard objectives add StepRotate dummy {"text":"ステップ時相対水平角度"}


#################### スコア初期化 ####################
function calc_manager:initialize_score
function status_manager:initialize_score

#################### システムブロック設置 ####################
setblock 0 0 0 minecraft:jukebox{RecordItem:{id:"minecraft:stone",Count:1b,tag:{}}}
setblock 0 1 0 minecraft:oak_sign
setblock 0 2 0 minecraft:shulker_box
