##############################
### 初回ロード処理
##############################

#################### チーム作成 ####################
team add Friendly {"text":"プレイヤー・ペット・アライアンス連合チーム"}
team add Enemy {"text":"モンスター連合チーム"}
team modify Friendly collisionRule never
team modify Enemy collisionRule never
team modify Friendly friendlyFire false
team modify Enemy friendlyFire false
team modify Friendly prefix {"text":"[Ally] ","color":"aqua","bold":true}
team modify Enemy prefix {"text":"[Enemy] ","color":"light_purple","bold":true}
team modify Friendly suffix {"text":" [E]","color":"red","bold":true}
team modify Friendly suffix {"text":" [C]","color":"gold","bold":true}
team modify Friendly suffix {"text":" [P]","color":"green","bold":true}
#################### チーム作成 ####################

#################### スコアボード作成 ####################
### ワールド管理スコアボード
scoreboard objectives add Settings dummy {"text":"設定"}

### 全体共通スコアボード
scoreboard objectives add GlobalTimer dummy {"text":"共通使用タイマー"}
### グローバル変数(要らないデータしか入れてはいけない!!!!!!!!!!!!!)
scoreboard objectives add Global dummy {"text":"グローバル変数"}

### 管理エンティティ共通スコアボード
scoreboard objectives add ManagedDataID dummy {"text":"データ管理ID"}
scoreboard objectives add TargetID dummy {"text":"ターゲットID"}
scoreboard objectives add TargetLinkID dummy {"text":"ターゲット紐付けID"}

### プレイヤー共通スコアボード
scoreboard objectives add SuppressParticle dummy {"text":"パーティクル抑制レベル"}

### 敵HP関連
scoreboard objectives add MobHPMax dummy {"text":"Mob最大HP"}
scoreboard objectives add MobHP dummy {"text":"Mob現在HP"}
scoreboard objectives add MobLastDamage dummy {"text":"Mob最終ダメージ"}
