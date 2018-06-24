##############################
### ピアッシングエイム適用
##############################

###ダメージ補正算出 ###(Count+10)/40 => 82.5%->187.5->300%
scoreboard players operation $DamageRate Global = @s PiercingAim
scoreboard players add $DamageRate Global 10
###矢修正
execute as @e[distance=..5,type=minecraft:arrow,tag=!Initialized,sort=nearest,limit=1] run function skill_manager:hunter/piercing_aim/modify

###回数消費
scoreboard players remove @s PiercingAim 1
###---演出---Start
execute if score @s PiercingAim matches ..0 run tellraw @a [{"text":"","color":"yellow"},{"selector":"@s"},"の",{"text":"ピアッシングエイム","color":"white","hoverEvent":{"action":"show_text","value":"放った矢が速くなり、落下しなくなる。","color":"white"}},"の効果が切れた。"]
###---演出---End
scoreboard players reset @s[scores={PiercingAim=..0}] PiercingAim
