##############################
### 初回ロード処理
##############################

#################### UUIDエンティティ初期化 ####################
function uuid_entity_manager:initializer/initialize

#################### チーム作成 ####################
team add Friendly {"text":"プレイヤー・ペット・アライアンス連合チーム"}
team add Enemy {"text":"モンスター連合チーム"}
team modify Friendly collisionRule never
team modify Enemy collisionRule never
team modify Friendly friendlyFire false
team modify Enemy friendlyFire false
team modify Friendly prefix {"text":"[Ally] ","color":"aqua","bold":true}
team modify Enemy prefix {"text":"[Enemy] ","color":"light_purple","bold":true}
team modify Friendly suffix {"text":" [L]","color":"red","bold":true}
team modify Friendly suffix {"text":" [E]","color":"red","bold":true}
team modify Friendly suffix {"text":" [C]","color":"gold","bold":true}
team modify Friendly suffix {"text":" [P]","color":"green","bold":true}
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
function calc_manager:random/initialize



#################### 管理エンティティ共通スコアボード ####################
scoreboard objectives add ManagedDataID dummy {"text":"データ管理ID"}
scoreboard objectives add TargetID dummy {"text":"ターゲットID"}
scoreboard objectives add TargetLinkID dummy {"text":"ターゲット紐付けID"}
scoreboard objectives add EyeHeight dummy {"text":"体の中心の高さ(cm)"}

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

#################### 敵ステータス関連スコアボード ####################
### 敵HP関連
scoreboard objectives add MobMaxHealth dummy {"text":"Mob最大HP(chp)"}
scoreboard objectives add MobHealth dummy {"text":"Mob現在HP(chp)"}
scoreboard objectives add MobLastDamage dummy {"text":"Mob最終ダメージ(chp)"}

#################### 振舞い定義用スコアボード ####################
### TargetSettings
scoreboard objectives add DesiredDistance dummy {"text":"ターゲット希望距離(cm)"}
scoreboard objectives add DesiredHeight dummy {"text":"ターゲット希望高度差(cm)"}
scoreboard objectives add FollowRange dummy {"text":"ターゲット補足距離(cm)"}
scoreboard objectives add TimeToSearch dummy {"text":"探索開始時間(cs)"}
scoreboard objectives add DetectType dummy {"text":"ターゲット検知タイプ(検知判定時に一時使用)"}
scoreboard objectives add MovementSpeed dummy {"text":"通常時移動速度(ccm/t)"}
### MoveSettingsList
scoreboard objectives add TargetForward dummy {"text":"ターゲット位置補正水平上(cm)"}
#
scoreboard objectives add RotateAngle dummy {"text":"現在水平角度(cdeg)"}
scoreboard objectives add TiltAngle dummy {"text":"現在垂直角度(cdeg)"}
#
scoreboard objectives add RotateOffset dummy {"text":"ターゲット初期相対水平角度(cdeg)"}
scoreboard objectives add TiltOffset dummy {"text":"ターゲット初期相対垂直角度(cdeg)"}
#
scoreboard objectives add SpinSpeed dummy {"text":"ターゲットへの回転可能速度(cdeg/t)"}
scoreboard objectives add SpinAmount dummy {"text":"ターゲットへの回転量(cdeg)"}
#
scoreboard objectives add RepeaterDelay dummy {"text":"動き開始時間(cs)"}
scoreboard objectives add RepeaterToStart dummy {"text":"動き開始実時間(cs)"}
scoreboard objectives add RepeaterDuration dummy {"text":"動き終了時間(cs)"}
scoreboard objectives add RepeaterToNext dummy {"text":"動き終了実時間(cs)"}
scoreboard objectives add RepeaterContinue dummy {"text":"動き変化繰り返し回数"}
#
scoreboard objectives add ForwardSpeed dummy {"text":"前への速さ(ccm/t)"}
scoreboard objectives add ForwardGravity dummy {"text":"前への加速度(ccm/t)"}
scoreboard objectives add ForwardSpeedMin dummy {"text":"前への速さ(ccm/t)"}
scoreboard objectives add ForwardSpeedMax dummy {"text":"前への加速度(ccm/t)"}
scoreboard objectives add LeftwardSpeed dummy {"text":"左への速さ(ccm/t)"}
scoreboard objectives add LeftwardGravity dummy {"text":"左への加速度(ccm/t)"}
scoreboard objectives add LeftwardSpeedMin dummy {"text":"左への速さ(ccm/t)"}
scoreboard objectives add LeftwardSpeedMax dummy {"text":"左への加速度(ccm/t)"}
scoreboard objectives add UpwardSpeed dummy {"text":"上への速さ(ccm/t)"}
scoreboard objectives add UpwardGravity dummy {"text":"上への加速度(ccm/t)"}
scoreboard objectives add UpwardSpeedMin dummy {"text":"上への速さ(ccm/t)"}
scoreboard objectives add UpwardSpeedMax dummy {"text":"上への加速度(ccm/t)"}


