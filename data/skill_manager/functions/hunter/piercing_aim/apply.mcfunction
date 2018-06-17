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
tellraw @s[scores={PiercingAim=..0}] {"text":"ピアッシングエイムの効果が切れた","color":"yellow"}
###---演出---End
scoreboard players reset @s[scores={PiercingAim=..0}] PiercingAim
