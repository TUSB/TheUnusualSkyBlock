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

#tag=FriendlyProjectile: Mobにダメージ
execute if entity @s[tag=FriendlyProjectile] at 0-0-0-0-0 positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=Mob,scores={ProjectileTime=0..},dx=0,dy=0,dz=0,limit=1,sort=nearest] run function entity:projectile_hit/enemy
#tag=EnemyProjectile: Playerにダメージ
execute if entity @s[tag=EnemyProjectile] at 0-0-0-0-0 positioned ~-0.5 ~-0.5 ~-0.5 as @e[predicate=entity:friendly,scores={ProjectileTime=0..},dx=0,dy=0,dz=0,limit=1,sort=nearest] run function entity:projectile_hit/friendly

execute as 0-0-0-0-0 run function calc:geometry/return_marker
