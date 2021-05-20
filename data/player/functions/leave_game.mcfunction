
#エンチャント・金床 schedule 再起動
execute if entity @e[distance=..7,tag=EnchantTable] run schedule function item:enchant/enchanting_table/schedule 2t
execute if entity @e[distance=..7,tag=Anvil] run schedule function item:lapidary/anvil/schedule 2t

#プレイヤーゲーム設定
function player:setting/reshow

scoreboard players reset @s LeaveGame
