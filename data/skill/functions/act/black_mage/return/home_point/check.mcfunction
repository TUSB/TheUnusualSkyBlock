
### ホームポイント 設定可能判定

scoreboard players set @s _ 1

execute store result score _ _ run clone ~-5 ~-1 ~-5 ~5 ~-1 ~5 ~-5 ~-1 ~-5 filtered air force
execute store success score @s _ unless score _ _ matches 50..

execute store result score _ _ run clone ~-5 ~ ~-5 ~5 ~5 ~5 ~-5 ~ ~-5 filtered #skill:home_point/containers force
execute if score @s _ matches 1 store success score @s _ if score _ _ matches 6..

return run scoreboard players get @s _
