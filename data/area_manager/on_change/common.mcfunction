##############################
### エリア移動時共通処理
##############################

###スキルチェンジのトリガーをリセットしておく
scoreboard players reset @s InstantChangeA
scoreboard players reset @s InstantChangeB
scoreboard players reset @s ModeChangeA
scoreboard players reset @s ModeChangeB

###エンドゲートウェイで飛んだ時の向きを調整する
execute at @s run tp @s @e[r=4,tag=ViewPoint,c=1]

###タイトル表示用に表示時間を設定する
title @s times 30 40 40

###テーブルマウンテン用エンダーチェスト管理
scoreboard players set @s[tag=ResetEnderChest] EnderChestOpened 0
scoreboard players tag @s[tag=ResetEnderChest] remove ResetEnderChest
