##############################
### 初回ロード処理
##############################

#################### 全般エンティティ作成 ####################
### 角度保持エンティティ
execute unless entity 0-0-0-0-0 run summon minecraft:area_effect_cloud 0.0 0.0 0.0 {Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[System],UUIDMost:0l,UUIDLeast:0l,CustomName:"[\"角度保持用\"]"}
### テキスト保持エンティティ
execute unless entity 0-0-1-0-0 run summon minecraft:area_effect_cloud 0.0 1.0 0.0 {Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[System],UUIDMost:1l,UUIDLeast:0l,CustomName:"[\"テキスト\"]"}
### 視線判定エンティティ１・２
execute unless entity 0-0-2-0-0 run summon minecraft:area_effect_cloud 0.0 2.0 0.0 {Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[System],UUIDMost:2l,UUIDLeast:0l,CustomName:"[\"視線判定用１\"]"}
execute unless entity 0-0-2-0-1 run summon minecraft:area_effect_cloud 0.0 2.1 0.0 {Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[System],UUIDMost:2l,UUIDLeast:1l,CustomName:"[\"視線判定用２\"]"}
### 位置取得エンティティ０・１・２
execute unless entity 0-0-3-0-0 run summon minecraft:area_effect_cloud 0.0 3.0 0.0 {Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[System],UUIDMost:3l,UUIDLeast:0l,CustomName:"[\"位置取得用\"]"}
execute unless entity 0-0-3-0-1 run summon minecraft:area_effect_cloud 0.0 3.1 0.0 {Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[System],UUIDMost:3l,UUIDLeast:1l,CustomName:"[\"位置取得用アンカー１\"]"}
execute unless entity 0-0-3-0-2 run summon minecraft:area_effect_cloud 0.0 3.2 0.0 {Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[System],UUIDMost:3l,UUIDLeast:2l,CustomName:"[\"位置取得用アンカー２\"]"}

#################### データ管理用エンティティ作成 ####################
### データ管理カーソルエンティティ
execute unless entity 1-0-0-0-0 run summon minecraft:area_effect_cloud 1.0 0.0 0.0 {Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[System],UUIDMost:4294967296l,UUIDLeast:0l,CustomName:"[\"データ管理カーソル\"]"}

#################### スポナー管理用エンティティ作成 ####################
### スポナーエリア管理エンティティ
execute unless entity 2-0-0-0-0 run summon minecraft:area_effect_cloud 2.0 0.0 0.0 {Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[System],UUIDMost:8589934592l,UUIDLeast:0l,CustomName:"[\"スポナーエリア管理カーソル\"]"}


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
### 成功カウント
scoreboard objectives add SuccessCount dummy {"text":"コマンド成功カウント"}

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

### 振舞い定義用
scoreboard objectives add DesiredDistance dummy {"text":"ターゲット希望距離"}
