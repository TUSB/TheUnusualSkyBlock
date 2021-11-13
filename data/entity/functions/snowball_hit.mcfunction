##############################
### 雪玉ヒット検知
##############################

#1tick後のPosを計算
function calc:geometry/tp_00000
execute store result score _ Calc run data get entity @s Pos[0] 100
execute store result score _ _ run data get entity @s Motion[0] 100
execute store result entity 0-0-0-0-0 Pos[0] double 0.01 run scoreboard players operation _ Calc += _ _
execute store result score _ Calc run data get entity @s Pos[1] 100
execute store result score _ _ run data get entity @s Motion[1] 100
execute store result entity 0-0-0-0-0 Pos[1] double 0.01 run scoreboard players operation _ Calc += _ _
execute store result score _ Calc run data get entity @s Pos[2] 100
execute store result score _ _ run data get entity @s Motion[2] 100
execute store result entity 0-0-0-0-0 Pos[2] double 0.01 run scoreboard players operation _ Calc += _ _

#tag=Skill: Mobに1ダメージ
execute if entity @s[tag=Skill] at 0-0-0-0-0 positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=Mob,dx=0,dy=0,dz=0,limit=1,sort=nearest] store result entity @s AbsorptionAmount float 0.99999 run data get entity @s AbsorptionAmount
#tag=DamageProjectile: Playerにダメージ
execute if entity @s[tag=DamageProjectile] at 0-0-0-0-0 positioned ~-0.5 ~-0.5 ~-0.5 as @a[gamemode=!creative,gamemode=!spectator,dx=0,dy=0,dz=0,limit=1,sort=nearest] run function enemy:snowball_damage

execute as 0-0-0-0-0 run function calc:geometry/return_marker
