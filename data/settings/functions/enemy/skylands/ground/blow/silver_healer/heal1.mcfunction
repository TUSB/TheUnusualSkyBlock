#Function
#対象となる敵をDistanceと当たり判定から調べる
scoreboard players operation # SpecialAttack = @s SpecialAttack
execute as @e[tag=Enemy,distance=..3] positioned ~-3 ~-1 ~-3 if entity @s[dx=5,dy=1,dz=5] if score @s HP < @s HPMax run function settings:enemy/skylands/ground/blow/silver_healer/heal2
# ChangeTurn Loop:1を行う
data modify storage mob_data: AI.Turn[0].Exit.ChangeTurn set value 1b
data modify storage mob_data: AI.ChangeTurn set value 1
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI set from storage mob_data: AI
