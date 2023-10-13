##############################
### 怪しい粉スキル使用時
##############################

#一旦消費量を保存
scoreboard players operation _ SuspiciousPowderToken = _ MP

#消費量を加算
scoreboard players operation @s SuspiciousPowderToken += _ MP

#消費MP量を0に設定
scoreboard players set _ MP 0
