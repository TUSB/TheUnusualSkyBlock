#異物排出
execute store result block ~ ~ ~ Items[0].Count byte 1 run scoreboard players get $0 Const
execute store result block ~ ~ ~ Items[0].Count byte 1 run scoreboard players get $0 Const
execute store result block ~ ~ ~ Items[0].Count byte 1 run scoreboard players get $0 Const
execute store result block ~ ~ ~ Items[0].Count byte 1 run scoreboard players get $0 Const
execute store result block ~ ~ ~ Items[0].Count byte 1 run scoreboard players get $0 Const
execute store result block ~ ~ ~ Items[0].Count byte 1 run scoreboard players get $0 Const
execute store result block ~ ~ ~ Items[0].Count byte 1 run scoreboard players get $0 Const
execute store result block ~ ~ ~ Items[0].Count byte 1 run scoreboard players get $0 Const
execute store result block ~ ~ ~ Items[0].Count byte 1 run scoreboard players get $0 Const
execute store result block ~ ~ ~ Items[0].Count byte 1 run scoreboard players get $0 Const
execute store result block ~ ~ ~ Items[0].Count byte 1 run scoreboard players get $0 Const
execute store result block ~ ~ ~ Items[0].Count byte 1 run scoreboard players get $0 Const
execute store result block ~ ~ ~ Items[0].Count byte 1 run scoreboard players get $0 Const
execute store result block ~ ~ ~ Items[0].Count byte 1 run scoreboard players get $0 Const
execute store result block ~ ~ ~ Items[0].Count byte 1 run scoreboard players get $0 Const
execute store result block ~ ~ ~ Items[0].Count byte 1 run scoreboard players get $0 Const
execute store result block ~ ~ ~ Items[0].Count byte 1 run scoreboard players get $0 Const
execute store result block ~ ~ ~ Items[0].Count byte 1 run scoreboard players get $0 Const
execute store result block ~ ~ ~ Items[0].Count byte 1 run scoreboard players get $0 Const
execute store result block ~ ~ ~ Items[0].Count byte 1 run scoreboard players get $0 Const
execute store result block ~ ~ ~ Items[0].Count byte 1 run scoreboard players get $0 Const
execute store result block ~ ~ ~ Items[0].Count byte 1 run scoreboard players get $0 Const
execute store result block ~ ~ ~ Items[0].Count byte 1 run scoreboard players get $0 Const
execute store result block ~ ~ ~ Items[0].Count byte 1 run scoreboard players get $0 Const
execute store result block ~ ~ ~ Items[0].Count byte 1 run scoreboard players get $0 Const
execute store result block ~ ~ ~ Items[0].Count byte 1 run scoreboard players get $0 Const

scoreboard players operation $inf_last Global = @s Global

fill ~ ~ ~ ~ ~ ~ minecraft:air destroy
kill @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:chest",Count:1b}}]

clone 5 1 10 5 1 10 ~ ~ ~
