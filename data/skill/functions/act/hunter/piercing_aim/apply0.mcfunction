##############################
### ピアッシングエイム適用
##############################

###残り回数*2% ダメージ上昇
scoreboard players operation _ Calc = @s PiercingAim
scoreboard players operation _ Calc += _ Calc
scoreboard players add _ Calc 100
###矢修正
execute as @e[distance=..3.5,type=minecraft:arrow,tag=!Initialized] run function skill:act/hunter/piercing_aim/apply1
#演出
function makeup:skill/act/hunter/piercing_aim/apply0
