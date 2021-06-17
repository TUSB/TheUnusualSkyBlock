##視線回転
execute store result score _ _ run data get storage mob_data: AI.Turn[0].Move.Rotate 10
execute facing entity @e[tag=Target,limit=1] feet positioned ^ ^ ^-1 rotated as @s run function entity:enemy/ai/move/rotate_loop

##移動
#前
execute if entity @e[tag=Target] run function entity:enemy/ai/move/move_front
#横
execute if entity @e[tag=Target] run function entity:enemy/ai/move/move_side
#最終処理
execute if entity @e[tag=Target] in minecraft:overworld run function entity:enemy/ai/move/move_end