##############################
### エリア移動時共通処理
##############################

###ゲームモードを反映する
tellraw @s[gamemode=adventure,tag=!Adv] {"text":"ブロックの設置・破壊制限が解除された。","color":"dark_aqua"}
gamemode survival @s[gamemode=adventure,tag=!Adv]
tellraw @s[gamemode=survival,tag=Adv] {"text":"ブロックの設置・破壊が制限された。","color":"red"}
gamemode adventure @s[gamemode=survival,tag=Adv]

###エンドゲートウェイで飛んだ時の向きを調整する
execute store result score $FindView Global at @s run tp @s @e[distance=..4,tag=ViewPoint,limit=1]
execute if entity @s[gamemode=!creative,gamemode=!spectator] if score $FindView Global matches ..0 run function entity_manager:hack

###タイトル表示用に表示時間を設定する
title @s times 30 40 40

###テーブルマウンテン用エンダーチェスト管理
scoreboard players set @s[tag=ResetEnderChest] EnderChestOpened 0
tag @s[tag=ResetEnderChest] remove ResetEnderChest
