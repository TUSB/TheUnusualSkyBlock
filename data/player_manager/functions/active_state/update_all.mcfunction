##############################
### 有効なプレイヤーか判定
##############################

### 味方タグを削除してプレイヤーを無効化
tag @a remove Ally

### 条件でプレイヤーを有効化
### 1.サバイバル or アドベンチャー
### 2.生きている
execute as @a[gamemode=!creative,gamemode=!spectator,scores={Health=1..}] run function player_manager:active_state/update