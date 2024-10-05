
### ホームポイント 設定可能判定

scoreboard players set @s _ 1

execute store result score _ _ run clone ~-5 ~-1 ~-5 ~5 ~-1 ~5 ~-5 ~-1 ~-5 filtered air force
execute store success score @s _ unless score _ _ matches 50..

execute store result score _ _ run clone ~-5 ~ ~-5 ~5 ~5 ~5 to area:control_area 1 20 1 filtered #skill:home_point/containers force
execute in area:control_area run fill 1 20 1 11 25 11 air
execute in area:control_area positioned 6 23 6 run kill @e[type=item,tag=!Initialized,distance=..16]
execute if score @s _ matches 1 store success score @s _ if score _ _ matches 6..

scoreboard players get @s _
