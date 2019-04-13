##############################
### 初回ロード処理
##############################

### ワールド管理スコアボード
scoreboard objectives add Settings dummy {"text":"設定"}

### 全体共通スコアボード
scoreboard objectives add GlobalTimer dummy {"text":"共通使用タイマー"}

### 管理エンティティ共通スコアボード
scoreboard objectives add ManagedID dummy {"text":"管理ID"}
scoreboard objectives add TargetID dummy {"text":"ターゲットID"}
scoreboard objectives add TargetLinkID dummy {"text":"ターゲット紐付けID"}

### プレイヤー共通スコアボード
scoreboard objectives add SuppressParticle dummy {"text":"パーティクル抑制レベル"}



### チーム作成
team add Friendly {"text":"プレイヤー・ペット・アライアンス連合チーム"}
team add Enemy {"text":"モンスター連合チーム"}
