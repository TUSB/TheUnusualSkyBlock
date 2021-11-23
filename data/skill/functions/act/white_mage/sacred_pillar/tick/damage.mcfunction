
### セイクリッドピラー発動中

#ダメージ
function skill:damage/load
execute if score @s Level matches 1 store success score @s _ positioned ~-1.5 ~-4 ~-1.5 as @e[dx=2,dy=8,dz=2,tag=Mob] run function skill:damage/apply/
execute if score @s Level matches 2 store success score @s _ positioned ~-2.5 ~-5 ~-2.5 as @e[dx=4,dy=10,dz=4,tag=Mob] run function skill:damage/apply/
execute if score @s Level matches 3 store success score @s _ positioned ~-3.5 ~-6 ~-3.5 as @e[dx=6,dy=12,dz=6,tag=Mob] run function skill:damage/apply/

#Interval, Duration設定
execute if score @s _ matches 1 run scoreboard players remove _ Interval 80
scoreboard players set @s Interval 10
