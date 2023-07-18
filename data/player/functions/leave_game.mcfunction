
#エンチャント・金床 schedule 再起動
execute if entity @e[distance=..7,tag=EnchantTable] run schedule function item:enchant/enchanting_table/schedule 2t
execute if entity @e[distance=..7,tag=Anvil] run schedule function item:lapidary/anvil/schedule 2t

#凍結 schedule 再起動
execute if entity @s[tag=Freeze] run schedule function effects:freeze/fix 1t

#リスト・アイテム キャンセル
tag @s remove SelectRestoreItem

#プレイヤーゲーム設定
function player:game_settings/show

#v13Alpha 進捗更新
function enemy:break_spawner/alpha_advancements/update

# バースト必要値 更新
bossbar set skill:burst players @a
execute store result score _ _ if entity @a
scoreboard players remove _ _ 1
scoreboard players add _ _ 10
scoreboard players set _ Calc 10
execute store result bossbar skill:burst max run scoreboard players operation _ _ *= _ Calc

function skill:burst/bossbar

scoreboard players reset @s LeaveGame
