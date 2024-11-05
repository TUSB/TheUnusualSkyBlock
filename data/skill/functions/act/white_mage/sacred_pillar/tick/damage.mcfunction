
### セイクリッドピラー発動中

#ダメージ
function skill:damage/load
execute if score @s Level matches 1 store success score @s _ positioned ~-2.5 ~-4 ~-2.5 as @e[dx=4,dy=8,dz=4,tag=Enemy] run function skill:damage/apply/
execute if score @s Level matches 2 store success score @s _ positioned ~-3.5 ~-5 ~-3.5 as @e[dx=6,dy=10,dz=6,tag=Enemy] run function skill:damage/apply/
execute if score @s Level matches 3 store success score @s _ positioned ~-4.5 ~-6 ~-4.5 as @e[dx=8,dy=12,dz=8,tag=Enemy] run function skill:damage/apply/

#Interval, Duration設定
execute if score @s _ matches 1 run scoreboard players remove _ Interval 80
scoreboard players set @s Interval 10
