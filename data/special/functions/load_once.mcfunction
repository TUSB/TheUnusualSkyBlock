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

#################### プレイヤー共通スコアボード ####################
scoreboard objectives add SuppressParticle dummy {"text":"パーティクル抑制レベル"}
scoreboard objectives add Health health {"text":"プレイヤー現在HP"}

#################### 計算関連共通スコアボード ####################
scoreboard objectives add Distance dummy {"text":"ターゲットとの距離(cm)"}
scoreboard objectives add BlockThickness dummy {"text":"ブロックの厚み(cm)"}
scoreboard objectives add Dimension dummy {"text":"ディメンション"}

#################### 敵ステータス関連スコアボード ####################
### 敵HP関連
scoreboard objectives add MobMaxHealth dummy {"text":"Mob最大HP(chp)"}
scoreboard objectives add MobHealth dummy {"text":"Mob現在HP(chp)"}
scoreboard objectives add MobLastDamage dummy {"text":"Mob最終ダメージ(chp)"}

#################### 振舞い定義用スコアボード ####################
### DefineTarget
scoreboard objectives add DesiredDistance dummy {"text":"ターゲット希望距離(cm)"}
scoreboard objectives add FollowRange dummy {"text":"ターゲット補足距離(cm)"}
scoreboard objectives add TimeToSearch dummy {"text":"探索開始時間(cs)"}
### DefineDirections
scoreboard objectives add TargetPosX dummy {"text":"ターゲット位置X(cm)"}
scoreboard objectives add TargetPosY dummy {"text":"ターゲット位置Y(cm)"}
scoreboard objectives add TargetPosZ dummy {"text":"ターゲット位置Z(cm)"}
scoreboard objectives add TargetOffsetX dummy {"text":"ターゲット相対位置X(cm)"}
scoreboard objectives add TargetOffsetY dummy {"text":"ターゲット相対位置Y(cm)"}
scoreboard objectives add TargetOffsetZ dummy {"text":"ターゲット相対位置Z(cm)"}
scoreboard objectives add TargetUpdateTick dummy {"text":"ターゲット位置更新間隔(tick)"}
scoreboard objectives add RotateAngle dummy {"text":"ターゲットに対する横回転角(deg)"}
scoreboard objectives add TiltAngle dummy {"text":"ターゲットに対する縦回転角度(deg)"}
scoreboard objectives add RotateSpeed dummy {"text":"ターゲットへの横回転可能速度(deg/s)"}
scoreboard objectives add TiltSpeed dummy {"text":"ターゲットへの縦回転可能速度(deg/s)"}
scoreboard objectives add IntrpDirStart dummy {"text":"向き変化開始時間(cs)"}
scoreboard objectives add IntrpDirEnd dummy {"text":"向き変化終了時間(cs)"}
scoreboard objectives add IntrpDirRanDelay dummy {"text":"向き変化遅延乱数(cs)"}
scoreboard objectives add IntrpDirDuration dummy {"text":"向き変化繰り返し間隔(cs)"}
scoreboard objectives add IntrpDirRepCount dummy {"text":"向き変化繰り返し回数"}
scoreboard objectives add IntrpDirActStart dummy {"text":"向き変化開始時間乱数適用後(cs)"}
scoreboard objectives add IntrpDirActEnd dummy {"text":"向き変化終了時間乱数適用後(cs)"}
### DefineMoves

scoreboard objectives add IntrpMovStart dummy {"text":"動き変化開始時間(cs)"}
scoreboard objectives add IntrpMovEnd dummy {"text":"動き変化終了時間(cs)"}
scoreboard objectives add IntrpMovRanDelay dummy {"text":"動き変化遅延乱数(cs)"}
scoreboard objectives add IntrpMovDuration dummy {"text":"動き変化繰り返し間隔(cs)"}
scoreboard objectives add IntrpMovRepCount dummy {"text":"動き変化繰り返し回数"}

### DefineDance

scoreboard objectives add IntrpDanStart dummy {"text":"ダンス開始時間(cs)"}
scoreboard objectives add IntrpDanEnd dummy {"text":"ダンス終了時間(cs)"}
scoreboard objectives add IntrpDanRanDelay dummy {"text":"ダンス遅延乱数(cs)"}
scoreboard objectives add IntrpDanDuration dummy {"text":"ダンス繰り返し間隔(cs)"}
scoreboard objectives add IntrpDanRepCount dummy {"text":"ダンス繰り返し回数"}


