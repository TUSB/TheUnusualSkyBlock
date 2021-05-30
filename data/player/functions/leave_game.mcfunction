
#エンチャント・金床 schedule 再起動
execute if entity @e[distance=..7,tag=EnchantTable] run schedule function item:enchant/enchanting_table/schedule 2t
execute if entity @e[distance=..7,tag=Anvil] run schedule function item:lapidary/anvil/schedule 2t

#凍結 schedule 再起動
execute if entity @e[tag=Freeze,distance=..10] run schedule function effects:freeze/fix 1t

#プレイヤーゲーム設定
function player:game_settings/reshow

scoreboard players reset @s LeaveGame
