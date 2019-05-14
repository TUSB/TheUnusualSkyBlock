##############################
### 有効なプレイヤーか判定
##############################

### 味方タグを削除
tag @a remove Ally

### 条件で味方タグを付与
### 1.サバイバル or アドベンチャー
### 2.生きている
tag @a[gamemode=!creative,gamemode=!spectator,scores={Health=1..}] add Ally
