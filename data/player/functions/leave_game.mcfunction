
#エンチャント・金床 schedule 再起動
execute if entity @e[distance=..7,tag=EnchantTable] run schedule function item:enchant/enchanting_table/schedule 2t
execute if entity @e[distance=..7,tag=Anvil] run schedule function item:lapidary/anvil/schedule 2t

#凍結 schedule 再起動
execute if entity @s[tag=Freeze] run schedule function effects:freeze/fix 1t

#リスト・アイテム キャンセル
tag @s remove SelectRestoreItem

#進捗解除
advancement revoke @s only item:init_tusb_memory
advancement revoke @s only item:engraving
advancement revoke @s only item:jewel_bundle
advancement revoke @s only item:emerald_bundle

#プレイヤーゲーム設定
function player:game_settings/show

#v13Alpha 進捗更新
function enemy:break_spawner/alpha_advancements/update

# バースト必要値 更新
bossbar set skill:burst players @a
execute store result score _ _ if entity @a
scoreboard players remove _ _ 1
scoreboard players add _ _ 10
scoreboard players set _ Calc 30
execute store result bossbar skill:burst max run scoreboard players operation _ _ *= _ Calc

function skill:burst/bossbar

scoreboard players reset @s LeaveGame
