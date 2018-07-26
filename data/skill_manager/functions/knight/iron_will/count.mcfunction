##############################
### アイアンウィル経過
##############################

### 1tick経過
scoreboard players remove @s IronWill 1

###---演出---Start
execute if score @s IronWill matches ..0 run playsound minecraft:entity.snow_golem.death master @a[distance=..16] ~ ~ ~ 1 0
execute if score @s IronWill matches ..0 run playsound minecraft:entity.player.burp master @a[distance=..16] ~ ~ ~ 1 0.6
###---演出---End

###効果切れメッセージ
execute if score @s IronWill matches ..0 run tellraw @a [{"text":"","color":"yellow"},{"selector":"@s"},"の",{"text":"アイアンウィル","color":"white","hoverEvent":{"action":"show_text","value":"ノックバックしなくなる。","color":"white"}},"の効果が切れた。"]
scoreboard players reset @s[scores={IronWill=..0}] IronWill
