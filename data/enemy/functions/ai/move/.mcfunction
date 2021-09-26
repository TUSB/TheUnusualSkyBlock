##移動
#前
execute rotated as @s run function enemy:ai/move/move_front
#横
execute rotated as @s run function enemy:ai/move/move_side
#最終処理
execute in minecraft:overworld run function enemy:ai/move/move_end
