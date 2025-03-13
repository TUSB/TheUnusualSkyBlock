#Function
# ParentIDを引き継ぐ
    execute on vehicle run scoreboard players operation _ _ = @s ParentID
    scoreboard players operation @s ParentID = _ _
# MPを使用して斬撃の角度を指定する
    scoreboard players set @s MP 0
    execute store result score _ Random run function calc:random
    scoreboard players set _ _ 5
    scoreboard players operation _ Random %= _ _
    execute if score _ Random matches 0 run scoreboard players set @s MP 1
    execute if score _ Random matches 1 run scoreboard players set @s MP 2
    execute if score _ Random matches 2 run scoreboard players set @s MP 3
    execute if score _ Random matches 3 run scoreboard players set @s MP 4
    execute if score _ Random matches 4 run scoreboard players set @s MP 5
