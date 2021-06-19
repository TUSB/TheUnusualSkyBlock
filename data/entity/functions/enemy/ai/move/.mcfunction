##視線回転
execute store result score _ _ run data get storage mob_data: AI.Turn[0].Move.Rotate 10
execute unless score _ _ matches 0 facing entity @e[tag=Target,limit=1] feet positioned ^ ^ ^-1 rotated as @s run function entity:enemy/ai/move/rotate_loop

##移動
#前
execute rotated as @s run function entity:enemy/ai/move/move_front
#横
execute rotated as @s run function entity:enemy/ai/move/move_side
#最終処理
execute in minecraft:overworld run function entity:enemy/ai/move/move_end
